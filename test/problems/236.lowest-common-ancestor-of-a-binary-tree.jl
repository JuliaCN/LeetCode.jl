@testset "236.lowest-common-ancestor-of-a-binary-tree.jl" begin
    root = TreeNode{Int}([3, 5, 1, 6, 2, 0, 8, nothing, nothing, 7, 4])
    @test loweset_common_ancestor_236(root, root.left, root.left.right.right) == root.left
    @test loweset_common_ancestor_236(root, root.left, root.right) == root
    @test loweset_common_ancestor_236(
        TreeNode{Int}([1, 2]), TreeNode{Int}([1, 2]), TreeNode(2)
    ) == TreeNode{Int}([1, 2])
end
