using DataFrames, CSV, OkFiles, Chain, PrettyTables
using Revise, FSDatasets, SmallDatasetMaker




flist = filelist(r"FS\_FrictionCoeff\_fulltable\_s\d+\.csv", FSDatasets.carbdatadir())
dfs = CSV.read.(flist, DataFrame)
tags1 = getfield.(match.(r"s\d+(?=\.csv)", basename.(flist)), :match)

describe.(dfs)

longdfs = FC_FIM_SEP.(dfs .=> tags1, "rock type" => "carbonate")
longdfs .|> describe .|> PrettyTables.pretty_table

vcat(longdfs...)

