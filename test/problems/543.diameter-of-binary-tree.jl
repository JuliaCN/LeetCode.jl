@testset "543.diameter-of-binary-tree.jl" begin
    t = convert(TreeNode{Int}, [1, 2, 3, 4, 5])
    @test diameter_of_binary_tree(t) == 3
end
