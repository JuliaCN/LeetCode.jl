@testset "113.path-sum-ii.jl" begin
    root = TreeNode{Int}([5, 4, 8, 11, nothing, 13, 4, 7, 2, nothing, nothing, 5, 1])
    @test path_sum_113(root, 22) == [[5, 4, 11, 2], [5, 8, 4, 5]]

    @test path_sum_113(TreeNode{Int}([1, 2, 3]), 5) == Vector{Vector{Int}}[]

    @test path_sum_113(TreeNode{Int}([1, 2]), 0) == Vector{Vector{Int}}[]

    root = TreeNode{Int}([1, 2, nothing, 3, nothing, 4, nothing, 5])
    @test path_sum_113(root, 15) == [[1, 2, 3, 4, 5]]
end
