@testset "979.distribute-coins-in-binary-tree.jl" begin
    @test distribute_coins(TreeNode(3, TreeNode(0), TreeNode(0))) == 2
    @test distribute_coins(TreeNode(0, TreeNode(3), TreeNode(0))) == 3
    @test distribute_coins(TreeNode(1, TreeNode(2), TreeNode(0))) == 2
end