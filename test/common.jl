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
    @test t == TreeNode{Int}(xs)
    @test TreeNode{Int}([6,3,5,nothing,2,0,nothing,nothing,1]) == 
    TreeNode(6, TreeNode(3, nothing, TreeNode(2, nothing, TreeNode(1))), TreeNode(5, TreeNode(0)))

    @test mat_fast_mul([1 5; 4 2], 15, 7) == ([1 5; 4 2] ^ 15) .% 7
    @test mat_fast_mul([1 5; 4 2], 0, 7) == [1 1; 1 1]
    @test mat_fast_mul([1 5; 4 2], 3, 1) == [0 0; 0 0]
end
