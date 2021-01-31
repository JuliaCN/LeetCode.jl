@test "1008.construct-binary-search-tree-from-preorder-traversal.jl" begin
    @test bst_from_preorder([8, 5, 1, 7, 10, 12]) == TreeNode(
        8,
        TreeNode(5, TreeNode(1), TreeNode(7)),
        TreeNode(10, nothing, TreeNode(12)),
    )
end