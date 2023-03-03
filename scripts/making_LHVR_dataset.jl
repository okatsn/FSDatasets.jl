using DataFrames, CSV, OkFiles, Chain
using Revise, FSDatasets, SmallDatasetMaker



flist = filelist(r"FS\_FrictionCoeff\_fulltable\_s\d+\.csv", FSDatasets.carbdatadir())

dfs = CSV.read.(flist, DataFrame)
describe.(dfs)

df1 = dfs[1]

dflong = @chain df1 begin 
    # stack(Cols(r"(SEP|FIM)"))
    select()
    transform(:variable => ByRow(s -> parse(Int, match(r"\d+\Z", s).match)) => "Moving window")
end
