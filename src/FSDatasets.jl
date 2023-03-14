module FSDatasets


# KEYNOTE:
# - Remember to comment all the followings and related tests out before version release of FSDatasets, because they are only used in creating the dataset.
# - Also remember to remove dependencies other than SmallDatasetMaker.

using DrWatson
include("projectdir.jl")


using SmallDatasetMaker # This is required. See `SmallDatasetMaker.datasets`.
FSDatasets.dataset(package_name, dataset_name) = SmallDatasetMaker.dataset(FSDatasets,package_name, dataset_name)
export dataset

FSDatasets.datasets() = SmallDatasetMaker.datasets(FSDatasets);
end
