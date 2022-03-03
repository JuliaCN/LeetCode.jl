@testset "617.merge-two-binary-trees.jl" begin
    @test merge_trees(
        TreeNode{Int}([1, 3, 2, 5]), TreeNode{Int}([2, 1, 3, nothing, 4, nothing, 7])
    ) == TreeNode{Int}([3, 4, 5, 5, 4, nothing, 7])
    @test merge_trees(TreeNode{Int}([1]), TreeNode{Int}([1, 2])) == TreeNode{Int}([2, 2])
    @test merge_trees(nothing, nothing) === nothing
end
