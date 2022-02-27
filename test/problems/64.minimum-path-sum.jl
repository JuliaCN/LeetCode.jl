@testset "64.minimum-path-sum.jl" begin
    @test min_path_sum([[1, 3, 1], [1, 5, 1], [4, 2, 1]]) == 7
    @test min_path_sum([[1, 2, 3], [4, 5, 6]]) == 12
    @test min_path_sum([[0]]) == 0
    @test min_path_sum([[1, 2, 5], [3, 2, 1]]) == 6
end
