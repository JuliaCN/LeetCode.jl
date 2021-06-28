@testset "662.maximum-width-of-binary-tree.jl" begin
    @test width_of_binary_tree(TreeNode{Int}([1, 3, 2, 5, 3, nothing, 9])) == 4
    @test width_of_binary_tree(TreeNode{Int}([1, 3, nothing, 5, 3])) == 2
    @test width_of_binary_tree(TreeNode{Int}([1, 3, 2, 5])) == 2
    @test width_of_binary_tree(TreeNode{Int}([1, 3, 2, 5, nothing, nothing, 9, 6, nothing,
                                              nothing, 7])) == 8
end
