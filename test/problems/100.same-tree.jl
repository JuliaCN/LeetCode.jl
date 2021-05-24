@testset "100.same-tree.jl" begin
    @test is_same_tree(TreeNode{Int}([1, 2, 3]), TreeNode{Int}([1, 2, 3])) == true
    @test is_same_tree(TreeNode{Int}([1, 2]), TreeNode([1, nothing, 2])) == false
    @test is_same_tree(TreeNode{Int}([1, 2, 1]), TreeNode([1, 1, 2])) == false
end
