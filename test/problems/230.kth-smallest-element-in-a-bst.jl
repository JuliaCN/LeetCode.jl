@testset "230.kth-smallest-element-in-a-bst.jl" begin
    @test kth_smallest_in_BST(TreeNode{Int}([3, 1, 4, nothing, 2]), 1) == 1
    @test kth_smallest_in_BST(TreeNode{Int}([5, 3, 6, 2, 4, nothing, nothing, 1]), 3) == 3
end
