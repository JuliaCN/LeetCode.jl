@testset "971.flip-binary-tree-to-match-preorder-traversal.jl" begin
    @test flip_match_voyage(TreeNode(1, TreeNode(2), nothing), [2, 1]) == [-1]
    @test flip_match_voyage(TreeNode(1, TreeNode(2), TreeNode(3)), [1, 3, 2]) == [1]
    @test flip_match_voyage(TreeNode(1, TreeNode(2), TreeNode(3)), [1, 2, 3]) == Int[]
end