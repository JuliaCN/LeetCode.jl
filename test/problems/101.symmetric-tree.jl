@testset "101.symmetric-tree.jl" begin
    @test is_symmetric_tree(TreeNode{Int}([1, 2, 2, 3, 4, 4, 3])) == true
    @test is_symmetric_tree(TreeNode{Int}([1, 2, 2, nothing, 3, nothing, 3])) == false
end
