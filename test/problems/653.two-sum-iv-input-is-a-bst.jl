@testset "653.two-sum-iv-input-is-a-bst.jl" begin
    @test find_target_inorder_traversal(TreeNode{Int}([5, 3, 6, 2, 4, nothing, 7]), 9) ==
        true
    @test find_target_inorder_traversal(TreeNode{Int}([5, 3, 6, 2, 4, nothing, 7]), 28) ==
        false
    @test find_target_inorder_traversal(TreeNode{Int}([2, 1, 3]), 4) == true
    @test find_target_inorder_traversal(TreeNode{Int}([2, 1, 3]), 1) == false
    @test find_target_inorder_traversal(TreeNode{Int}([2, 1, 3]), 3) == true
end
