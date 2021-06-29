@testset "654.maximum-binary-tree.jl" begin
    @test construct_maximum_binary_tree([3, 2, 1, 6, 0, 5]) ==
          TreeNode(6, TreeNode(3, nothing, TreeNode(2, nothing, TreeNode(1))), TreeNode(5, TreeNode(0)))
    @test construct_maximum_binary_tree([3, 2, 1]) ==
    TreeNode(3, nothing, TreeNode(2, nothing,TreeNode(1)))
end
