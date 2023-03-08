using DataFrames, CSV, OkFiles, Chain, PrettyTables
using Revise, FSDatasets, SmallDatasetMaker




flist = filelist(r"FS\_FrictionCoeff\_fulltable\_s\d+\.csv", FSDatasets.carbdatadir())
dfs = CSV.read.(flist, DataFrame)
tags1 = getfield.(match.(r"s\d+(?=\.csv)", basename.(flist)), :match)

describe.(dfs)

longdfs = FC_FIM_SEP.(dfs .=> tags1, "rock type" => "carbonate")
longdfs .|> describe .|> PrettyTables.pretty_table

dfcarb = vcat(longdfs...)

# Test for the combined dataframe
gdf = groupby(dfcarb, ["moving window", "trial"])
for (i, tag) in enumerate(tags1)
    for winsz in [300,500]
        try
            df = gdf[(var"moving window"=Int(winsz), var"trial"=string(tag))]
            @assert isequal(dfs[i][!, "SEP_$winsz"], df[!,"SEP"])
        catch e
            if isa(e, KeyError)
                continue
            else
                rethrow(e)
            end
        end
    end
end

df1 = dfs[1]
gpk = [k for (k, v) in pairs(gdf)]

dfcarb[!, "moving window"] |> unique
nrow(dfcarb)
nrow.(dfs)

rawpath = CSV.write(carbdatadir("SHIVA_combined.csv"), dfcarb)

SD = SourceData(rawpath,
                "LHVRSHIVA", # package
                "SHIVA", # name
                "Friction experiments with FS analysis with instrument SHIVA")
SD.description = "See https://github.com/okatsn/FSFrictionExp_23.jl for more information"

SD0 = deepcopy(SD)
# create_empty_table(FSDatasets) # Do this only once

compress_save!(FSDatasets, SD)
