@testset "889.construct-binary-tree-from-preorder-and-postorder-traversal.jl" begin
    @test construct_from_pre_post([1, 2, 4, 5, 3, 6, 7], [4, 5, 2, 6, 7, 3, 1]) ==
          TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)),
                   TreeNode(3, TreeNode(6), TreeNode(7)))

    @test construct_from_pre_post(Int[], Int[]) === nothing
end