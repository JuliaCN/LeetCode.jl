@testset "1448.count-good-nodes-in-binary-tree.jl" begin
    @test goodNodes(TreeNode{Int}([3,1,4,3,nothing,1,5])) == 4
    @test goodNodes(TreeNode{Int}([3,3,nothing,4,2])) == 3
    @test goodNodes(TreeNode{Int}([1])) == 1
end