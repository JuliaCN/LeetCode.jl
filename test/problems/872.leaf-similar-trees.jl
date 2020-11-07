@testset "872.leaf-similar-trees.jl" begin
    t1 = convert(TreeNode{Int}, [3,5,1,6,2,9,8,nothing, nothing,7,4])
    t2 = convert(TreeNode{Int}, [3,5,1,6,7,4,2,nothing,nothing,nothing,nothing,nothing,nothing,9,8])
    @test leaf_similar(t1, t2) == true
    @test leaf_similar(TreeNode(1), TreeNode(1)) == true
    @test leaf_similar(TreeNode(1), TreeNode(2)) == false
    @test leaf_similar(TreeNode(1, TreeNode(2)), TreeNode(2, TreeNode(2))) == false
    @test leaf_similar(TreeNode(1, TreeNode(2), TreeNode(3)), TreeNode(2, TreeNode(3), TreeNode(2))) == false
end