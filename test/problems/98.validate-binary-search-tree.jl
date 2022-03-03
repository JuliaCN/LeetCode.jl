@testset "98.validate-binary-search-tree.jl" begin
    @test is_valid_BST(TreeNode{Int}([5, 1, 4, nothing, nothing, 3, 6])) == false
    @test is_valid_BST(TreeNode{Int}([5, 1, 6])) == true
    @test is_valid_BST(TreeNode{Int}([5, 4, 6, nothing, nothing, 3, 7])) == false
    @test is_valid_BST(TreeNode{Int}([2, 2, 2])) == false
end
