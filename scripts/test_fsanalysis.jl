# activate data/raw/Spagnuolo_LiWei/
using MAT
f = matopen("data/raw/Spagnuolo_LiWei/s763.mat") do file
    read(file)
end

# CHECKPOINT:
# - Fork https://github.com/CGRG-lab/InformationAnalysis.jl, registrate it to OkRegistry and test
#   the calculation of Fisher information and Shannon entropy.
# - Backup raw data of granite rock shearing experiment.
