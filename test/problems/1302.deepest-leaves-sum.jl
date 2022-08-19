@testset "1302.deepest-leaves-sum.jl" begin
    root = TreeNode{Int}([
        1, 2, 3, 4, 5, nothing, 6, 7, nothing, nothing, nothing, nothing, 8
    ])
    @test deepest_leaves_sum(root) == 15
    root = TreeNode{Int}([
        6, 7, 8, 2, 7, 1, 3, 9, nothing, 1, 4, nothing, nothing, nothing, 5
    ])
    @test deepest_leaves_sum(root) == 19
    @test deepest_leaves_sum(TreeNode{Int}([1])) == 1
end
