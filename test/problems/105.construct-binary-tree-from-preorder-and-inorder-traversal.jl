@testset "105.Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal.jl" begin
    @test build_tree_105([3, 9, 20, 15, 7], [9, 3, 15, 20, 7]) ==
        TreeNode{Int}([3, 9, 20, nothing, nothing, 15, 7])
    @test build_tree_105([-1], [-1]) == TreeNode(-1)
    @test build_tree_105([3, 9, 8, 5, 4, 10, 20, 15, 7], [4, 5, 8, 10, 9, 3, 15, 20, 7]) ==
        TreeNode{Int}([
        3, 9, 20, 8, nothing, 15, 7, 5, 10, nothing, nothing, nothing, nothing, 4
    ])
end
