@testset "235.lowest-common-ancestor-of-a-binary-search-tree.jl" begin
    root = TreeNode{Int}([6, 2, 8, 0, 4, 7, 9, nothing, nothing, 3, 5])
    @test lowest_common_ancestor_235(root, root.left, root.right) == root
    @test lowest_common_ancestor_235(root, root.left, root.left.right) == root.left
    root = TreeNode{Int}([2, 1])
    @test lowest_common_ancestor_235(root, root, root.left) == root
end
