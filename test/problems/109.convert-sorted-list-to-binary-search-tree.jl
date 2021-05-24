@testset "109.convert-sorted-list-to-binary-search-tree.jl" begin
    @test sorted_list_to_bst(ListNode{Int64}([-10, -3, 0, 5, 9])) == TreeNode{Int64}(0, TreeNode{Int64}(-3, TreeNode{Int64}(-10, nothing, nothing), nothing), TreeNode{Int64}(9, TreeNode{Int64}(5, nothing, nothing), nothing))
end