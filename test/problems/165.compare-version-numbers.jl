@testset "165.compare-version-numbers.jl" begin
    @test compare_version("1.01", "1.001") == 0
    @test compare_version("1.0", "1.0.0") == 0
    @test compare_version("0.1", "1.1") == -1
    @test compare_version("1.0.1", "1") == 1
    @test compare_version("7.5.2.4", "7.5.3") == -1
end
