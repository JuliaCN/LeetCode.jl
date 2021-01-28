@testset "783.minimum-distance-between-bst-nodes.jl" begin
    t = TreeNode(4, 
           TreeNode(2, 
               TreeNode(1),
               TreeNode(3)
           ),
           TreeNode(6)
       )
    @test min_diff_in_bst(t) == 1
end