@testset "94.binary-tree-inorder-traversal.jl" begin
    @test inorder_traversal(TreeNode{Int}([1])) == [1]
    @test inorder_traversal(nothing) == Int[]
    @test inorder_traversal(TreeNode{Int}([1, nothing, 2, 3])) == [1, 3, 2]
    @test inorder_traversal(TreeNode{Int}([1, 2, 3, 4, 5, 6])) == [4, 2, 5, 1, 6, 3]
    @test inorder_traversal(TreeNode{Int}([3, 9, 4, nothing, nothing, 5, 7])) ==
        [9, 3, 5, 4, 7]
end
