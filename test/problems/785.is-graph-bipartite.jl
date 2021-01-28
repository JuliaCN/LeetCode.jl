@testset "785.is-graph-bipartite.jl" begin
    @test is_bipartite([[1,2,3], [0,2], [0,1,3], [0,2]]) == false
    @test is_bipartite([[1,3], [0,2], [1,3], [0,2]]) == true
    @test is_bipartite([[3, 6], [3, 6], [4, 6], [0, 1, 5], [2], [3], [0, 1, 2]]) == true
end