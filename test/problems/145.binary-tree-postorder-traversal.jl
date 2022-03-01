@testset "94.binary-tree-inorder-traversal.jl" begin
    @test postorder_traversal(TreeNode{Int}([1])) == [1]
    @test postorder_traversal(nothing) == Int[]
    @test postorder_traversal(TreeNode{Int}([1, nothing, 2, 3])) == [3, 2, 1]
    @test postorder_traversal(TreeNode{Int}([1, 2, 3, 4, 5, 6])) == [4, 5, 2, 6, 3, 1]
    @test postorder_traversal(TreeNode{Int}([3, 9, 4, nothing, nothing, 5, 7])) ==
        [9, 5, 7, 4, 3]
end
