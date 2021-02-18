@testset "998.maximum-binary-tree-ii.jl" begin
    @test insert_into_max_tree(TreeNode(4, TreeNode(1), TreeNode(3, TreeNode(2), nothing)),
                               5) ==
          TreeNode(5, TreeNode(4, TreeNode(1), TreeNode(3, TreeNode(2), nothing)))
    @test insert_into_max_tree(TreeNode(5, TreeNode(2, nothing, TreeNode(1)), TreeNode(4)),
                               3) ==
          TreeNode(5, TreeNode(2, nothing, TreeNode(1)), TreeNode(4, nothing, TreeNode(3)))
    @test insert_into_max_tree(TreeNode(5, TreeNode(2, nothing, TreeNode(1)), TreeNode(3)),
                               4) ==
          TreeNode(5, TreeNode(2, nothing, TreeNode(1)), TreeNode(4, TreeNode(3), nothing))
end