@testset "310.minimum-height-trees.jl" begin
    @test find_min_height_trees(1, Vector{Int}[]) == [1]
    @test find_min_height_trees(2, [[1, 2]]) == [1, 2]
    @test find_min_height_trees(6, [[4, 1], [4, 2], [4, 3], [4, 5], [6, 5]]) == [4, 5]
    @test find_min_height_trees(4, [[1,2],[3,2],[2,4]]) == [2]
end