@testset "1022.sum-of-root-to-leaf-binary-numbers.jl" begin
    @test sum_root_to_leaf(TreeNode{Int}([1,0,1,0,1,0,1])) == 22
    @test sum_root_to_leaf(TreeNode(1)) == 1
    @test sum_root_to_leaf(TreeNode(0)) == 0
    @test sum_root_to_leaf(TreeNode{Int}([1, 1])) == 3
end
