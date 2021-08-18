@testset "1038.binary-search-tree-to-greater-sum-tree.jl" begin
    @test bst_to_gst(
        TreeNode{Int}([
            4, 1, 6, 0, 2, 5, 7, nothing, nothing, nothing, 3, nothing, nothing, nothing, 8
        ]),
    ) == TreeNode{Int}([
        30,
        36,
        21,
        36,
        35,
        26,
        15,
        nothing,
        nothing,
        nothing,
        33,
        nothing,
        nothing,
        nothing,
        8,
    ])
    @test bst_to_gst(TreeNode{Int}([0, nothing, 1])) == TreeNode{Int}([1, nothing, 1])
    @test bst_to_gst(TreeNode{Int}([1, 0, 2])) == TreeNode{Int}([3, 3, 2])
    @test bst_to_gst(TreeNode{Int}([3, 2, 4, 1])) == TreeNode{Int}([7, 9, 4, 10])
    @test bst_to_gst(nothing) == nothing
end
