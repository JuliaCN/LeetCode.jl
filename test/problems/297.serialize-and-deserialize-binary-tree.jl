@testset "297.serialize-and-deserialize-binary-tree.jl" begin
    root = TreeNode{Int}([1, 2, 3, nothing, nothing, 4, 5])
    @test deserialize(serialize(root)) == root
    @test deserialize(serialize(nothing)) === nothing
    @test deserialize(serialize(TreeNode(1))) == TreeNode(1)
    @test deserialize(serialize(TreeNode{Int}([1, 2]))) == TreeNode{Int}([1, 2])
    @test deserialize(serialize(TreeNode{Int}([3, 2, 4, 3]))) == TreeNode{Int}([3, 2, 4, 3])
end
