module FSDatasets


# KEYNOTE:
# - Remember to comment all the followings and related tests out before version release of FSDatasets, because they are only used in creating the dataset.
# - Also remember to remove dependencies other than SmallDatasetMaker.

using DrWatson
include("projectdir.jl")


using SmallDatasetMaker # This is required. See `SmallDatasetMaker.datasets`.

# # Add package LHVRSHIVA
using Chain, DataFrames
include("LHVRSHIVA/projectdir.jl")
export carbdatadir, silidatadir
include("LHVRSHIVA/splitcolumnname.jl")
include("LHVRSHIVA/tableprocessing.jl")
export FC_FIM_SEP, readfilebytrial
end
