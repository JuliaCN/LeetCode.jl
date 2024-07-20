@testset "40.combination-sum-ii.jl" begin
    @test combinationSum([10, 1, 2, 7, 6, 1, 5], 8) ==
        [[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]
    @test combinationSum([2, 5, 2, 1, 2], 5) == [[1, 2, 2], [5]]
end
