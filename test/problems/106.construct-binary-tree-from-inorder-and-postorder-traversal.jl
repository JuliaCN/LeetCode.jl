@testset "106.construct-binary-tree-from-inorder-and-postorder-traversal.jl" begin
    inorder = [9, 3, 15, 20, 7]
    postorder = [9, 15, 7, 20, 3]
    tree = build_tree_inpost(inorder, postorder)
    @test inorder_traversal(tree) == inorder && postorder_traversal(tree) == postorder
end
