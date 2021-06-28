@testset "669.trim-a-binary-search-tree.jl" begin
    @test trim_BST(TreeNode{Int}([1, 0, 2]), 1, 2) == TreeNode{Int}([1, nothing, 2])
    @test trim_BST(TreeNode{Int}([3, 0, 4, nothing, 2, nothing, nothing, 1]), 1, 3) ==
          TreeNode{Int}([3, 2, nothing, 1])
    @test trim_BST(TreeNode{Int}([1]), 1, 2) == TreeNode{Int}([1])
    @test trim_BST(TreeNode{Int}([1, nothing, 2]), 1, 3) == TreeNode{Int}([1, nothing, 2])
    @test trim_BST(TreeNode{Int}([1, nothing, 2]), 2, 4) == TreeNode{Int}([2])
end
