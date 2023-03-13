@testset "load_LHVRSHIVA.jl" begin
    using FSDatasets, DataFrames
    for dataset_name in ["SHIVA", "LHVR"]
        df = dataset("LHVRSHIVA", dataset_name)
        @test isa(df, DataFrame)
    end
end
