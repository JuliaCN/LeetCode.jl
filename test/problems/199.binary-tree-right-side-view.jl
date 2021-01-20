@testset "199.binary-tree-right-side-view.jl" begin
    root = TreeNode(val=1)
    _build_tree!(root, [1,2,3,nothing,5,nothing,4], 1)
    @test right_side_view(root) == [1, 3, 4]
end
