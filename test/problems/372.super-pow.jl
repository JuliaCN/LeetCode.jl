@testset "372.super-pow.jl" begin
    @test super_pow(2, [3]) == 8
    @test super_pow(2, [1, 0]) == 1024
    @test super_pow(1, [4, 3, 3, 8, 5, 2]) == 1
    @test super_pow(2147483647, [2, 0, 0]) == 1198
end
