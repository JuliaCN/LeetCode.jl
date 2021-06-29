@testset "687.longest-univalue-path.jl" begin
    @test longest_univalue_path(TreeNode{Int}([5,4,5,1,1,5])) == 2
    @test longest_univalue_path(TreeNode{Int}([1,4,5,4,4,5])) == 2
end