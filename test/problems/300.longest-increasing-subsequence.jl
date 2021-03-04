@testset "300.longest-increasing-subsequence.jl" begin
    @test length_of_LIS([7, 7, 7, 7, 7, 7, 7]) == 1
    @test length_of_LIS([0, 1, 0, 3, 2, 3]) == 4
    @test length_of_LIS([10, 9, 2, 5, 3, 7, 101, 18]) == 4
end