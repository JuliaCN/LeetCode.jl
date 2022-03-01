@testset "110.balanced-binary-tree.jl" begin
    @test is_balanced_binary_tree(TreeNode{Int}([3, 9, 20, nothing, nothing, 15, 7])) ==
        true
    @test is_balanced_binary_tree(TreeNode{Int}([1, 2, 2, 3, 3, nothing, nothing, 4, 4])) ==
        false
    @test is_balanced_binary_tree(nothing) == true
end
