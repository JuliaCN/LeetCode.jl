@testset "965.univalued-binary-tree.jl" begin
    @test is_unival_tree(TreeNode(1, TreeNode(1, TreeNode(1), TreeNode(1)), TreeNode(1, nothing, TreeNode(1)))) == true
    @test is_unival_tree(TreeNode(1, TreeNode(1, TreeNode(5), TreeNode(1)), TreeNode(1))) == false
end