@testset "load_LHVRSHIVA.jl" begin
    using FSDatasets, DataFrames

    ref = FSDatasets.datasets()
    @test isa(ref, DataFrame)
    for (pkgnm, dsnm) in zip(ref.PackageName, ref.Dataset)
        df = FSDatasets.dataset(pkgnm, dsnm)
        @test isa(df, DataFrame)
    end # make sure all tests in the list can be loaded.
end
