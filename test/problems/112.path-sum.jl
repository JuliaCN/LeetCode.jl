@testset "112.path-sum.jl" begin
    @test has_path_sum(
        TreeNode{Int}([5, 4, 8, 11, nothing, 13, 4, 7, 2, nothing, nothing, nothing, 1]), 22
    ) == true
    @test has_path_sum(TreeNode{Int}([1, 2]), 1) == false
    @test has_path_sum(nothing, 0) == false
end
