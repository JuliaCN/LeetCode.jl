@testset "993.cousins-in-binary-tree.jl" begin
    t1 = TreeNode{Int}([1,2,3,4])
    @test is_cousins(t1, 4, 3) == false
    t1 = TreeNode{Int}([1,2,3,nothing,4,nothing,5])
    @test is_cousins(t1, 5, 4) == true
    t1 = TreeNode{Int}([1,2,3,nothing,4])
    @test is_cousins(t1, 2, 3) == false
end