@testset "623.add-one-row-to-tree.jl" begin
    @test begin
        root, val, depth = TreeNode{Int}([4, 2, 6, 3, 1, 5]), 1, 2
        add_one_row!(root, val, depth) ==
        TreeNode{Int}([4, 1, 1, 2, nothing, nothing, 6, 3, 1, 5])
    end
    @test begin
        root, val, depth = TreeNode{Int}([4, 2, nothing, 3, 1]), 1, 3
        add_one_row!(root, val, depth) ==
        TreeNode{Int}([4, 2, nothing, 1, 1, 3, nothing, nothing, 1])
    end
end
