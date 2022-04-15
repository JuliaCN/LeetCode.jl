@testset "1026.maximum-difference-between-node-and-ancestor.jl" begin
    @test max_ancestor_diff(
        TreeNode{Int}([8, 3, 10, 1, 6, nothing, 14, nothing, nothing, 4, 7, 13])
    ) == 7
    @test max_ancestor_diff(TreeNode{Int}([1, nothing, 2, nothing, 0, 3])) == 3
end
