@testset "94.binary-tree-inorder-traversal.jl" begin
    @test preorder_traversal(TreeNode{Int}([1])) == [1]
    @test preorder_traversal(nothing) == Int[]
    @test preorder_traversal(TreeNode{Int}([1, nothing, 2, 3])) == [1, 2, 3]
    @test preorder_traversal(TreeNode{Int}([1, 2, 3, 4, 5, 6])) == [1, 2, 4, 5, 3, 6]
    @test preorder_traversal(TreeNode{Int}([3, 9, 4, nothing, nothing, 5, 7])) ==
        [3, 9, 4, 5, 7]
end
