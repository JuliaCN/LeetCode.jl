@testset "226.invert-binary-tree.jl" begin
    @test invert_tree!(TreeNode{Int}([4, 2, 7, 1, 3, 6, 9])) ==
        TreeNode{Int}([4, 7, 2, 9, 6, 3, 1])
    @test invert_tree!(TreeNode{Int}([2, 1, 3])) == TreeNode{Int}([2, 3, 1])
    @test invert_tree!(nothing) === nothing
end
