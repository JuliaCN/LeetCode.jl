@testset "701.insert-into-a-binary-search-tree.jl" begin
    @test insert_into_bst(TreeNode{Int}([4, 2, 7, 1, 3]), 5) ==
        TreeNode{Int}([4, 2, 7, 1, 3, 5])
    @test insert_into_bst(TreeNode{Int}([40, 20, 60, 10, 30, 50, 70]), 25) ==
        TreeNode{Int}([40, 20, 60, 10, 30, 50, 70, nothing, nothing, 25])
    @test insert_into_bst(
        TreeNode{Int}([
            4, 2, 7, 1, 3, nothing, nothing, nothing, nothing, nothing, nothing
        ]),
        5,
    ) == TreeNode{Int}([4, 2, 7, 1, 3, 5])
end
