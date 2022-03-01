@testset "700.search-in-a-binary-search-tree.jl" begin
    @test search_bst(TreeNode{Int}([4, 2, 7, 1, 3]), 2) == TreeNode{Int}([2, 1, 3])
    @test search_bst(TreeNode{Int}([4, 2, 7, 1, 3]), 5) === nothing
end
