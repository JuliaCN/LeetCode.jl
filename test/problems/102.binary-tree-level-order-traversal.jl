@testset "102.binary-tree-level-order-traversal.jl" begin
    @test level_order(TreeNode{Int}([3, 9, 20, nothing, nothing, 15, 7])) ==
          [[3], [9, 20], [15, 7]]
end
