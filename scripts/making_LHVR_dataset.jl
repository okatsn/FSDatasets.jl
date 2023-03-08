using DataFrames, CSV, OkFiles, Chain, PrettyTables
using Revise, FSDatasets, SmallDatasetMaker




flist = filelist(r"FS\_FrictionCoeff\_fulltable\_LHVR\d+\.csv", FSDatasets.silidatadir())
dfs = CSV.read.(flist, DataFrame)
tags1 = getfield.(match.(r"LHVR\d+(?=\.csv)", basename.(flist)), :match)

describe.(dfs)

longdfs = FC_FIM_SEP.(dfs .=> tags1, "rock type" => "silicate")
longdfs .|> describe .|> PrettyTables.pretty_table

dfsili = vcat(longdfs...)

# Test for the combined dataframe
gdf = groupby(dfsili, ["moving window", "trial"])
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

dfsili[!, "moving window"] |> unique
nrow(dfsili)
nrow.(dfs)

rawpath = CSV.write(carbdatadir("LHVR_combined.csv"), dfsili)

SD = SourceData(rawpath,
                "LHVRSHIVA", # package
                "LHVR", # name
                "Friction experiments with FS analysis with instrument LHVR")
SD.description = "See https://github.com/okatsn/FSFrictionExp_23.jl for more information"

SD0 = deepcopy(SD)
# create_empty_table(FSDatasets) # Do this only once

compress_save!(FSDatasets, SD)
