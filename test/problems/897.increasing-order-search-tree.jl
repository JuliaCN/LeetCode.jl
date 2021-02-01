@testset "897.increasing-order-search-tree.jl" begin
    @test increasing_bst(TreeNode(5,
                                  TreeNode(3, TreeNode(2, TreeNode(1), nothing),
                                           TreeNode(4)),
                                  TreeNode(6, nothing,
                                           TreeNode(8, TreeNode(7), TreeNode(9))))) ==
          TreeNode(1, nothing,
                   TreeNode(2, nothing,
                            TreeNode(3, nothing,
                                     TreeNode(4, nothing,
                                              TreeNode(5, nothing,
                                                       TreeNode(6, nothing,
                                                                TreeNode(7, nothing,
                                                                         TreeNode(8,
                                                                                  nothing,
                                                                                  TreeNode(9)))))))))
end