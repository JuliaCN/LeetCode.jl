@testset "300.longest-increasing-subsequence.jl" begin
    @test length_of_lis([10, 9, 2, 5, 3, 7, 101, 18]) == 4
    @test length_of_lis([0, 1, 0, 3, 2, 3]) == 4
    @test length_of_lis([7, 7, 7, 7, 7, 7, 7]) == 1
end
