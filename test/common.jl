#! format: off
@testset "Common" begin
    xs =[3,5,1,6,2,9,8,nothing, nothing,7,4]
    t = TreeNode(3,
            TreeNode(5,
                TreeNode(6),
                TreeNode(2,
                    TreeNode(7),
                    TreeNode(4)
                )
            ),
            TreeNode(1,
                TreeNode(9),
                TreeNode(8)
            )
        )
    @test t == convert(TreeNode{Int}, xs)
end
