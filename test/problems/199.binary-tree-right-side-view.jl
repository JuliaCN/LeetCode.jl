@testset "199.binary-tree-right-side-view.jl" begin
    root = TreeNode(
        1,
        TreeNode(2, 
            nothing,
            TreeNode(5)
            ),
        TreeNode(3,
            nothing,
            TreeNode(4)
            ),
        )
    @test right_side_view(root) == [1, 3, 4]
end
