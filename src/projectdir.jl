
# Directories for the dataset-creating stage; do not export any of them.
rawdatadir(args...) = projectdir("data", "raw")
carbdatadir(args...) = rawdatadir("Carbonate_Elena_21")
silidatadir(args...) = rawdatadir("Silicate_LiWei_21")