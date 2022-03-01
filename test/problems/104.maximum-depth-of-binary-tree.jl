@testset "104.maximum-depth-of-binary-tree.jl" begin
    @test maximum_depth_of_btree(TreeNode{Int}([3, 9, 20, nothing, nothing, 15, 7])) == 3
    @test maximum_depth_of_btree(TreeNode{Int}([1, nothing, 2])) == 2
    @test maximum_depth_of_btree(nothing) == 0
    @test maximum_depth_of_btree(TreeNode{Int}([5])) == 1
end
