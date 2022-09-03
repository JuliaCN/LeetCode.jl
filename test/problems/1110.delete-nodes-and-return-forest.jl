@testset "1110.delete-nodes-and-return-forest.jl" begin
    @test del_nodes1110(TreeNode{Int}([1, 2, 3, 4, 5, 6, 7]), [3, 5]) ==
          [TreeNode{Int}([1, 2, nothing, 4]), TreeNode(6), TreeNode(7)]
    @test del_nodes1110(TreeNode{Int}([1, 2, 3, 4, 5, 6, 7]), [1, 3, 5]) ==
          [TreeNode{Int}([2, 4]), TreeNode(6), TreeNode(7)]
end
