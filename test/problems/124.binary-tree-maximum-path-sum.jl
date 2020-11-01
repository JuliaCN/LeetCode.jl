@testset "124.binary-tree-maximum-path-sum.jl" begin
    t = TreeNode(-10, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))

    @test max_path_sum(t) == 42
end
