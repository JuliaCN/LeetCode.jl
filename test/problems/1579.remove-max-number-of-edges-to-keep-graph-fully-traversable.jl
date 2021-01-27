@testset "1579.remove-max-number-of-edges-to-keep-graph-fully-traversable.jl" begin
    @test max_num_edges_to_remove(4, [[3,1,2],[3,2,3],[1,1,3],[1,2,4],[1,1,2],[2,3,4]]) == 2
    @test max_num_edges_to_remove(4, [[3,2,3],[1,1,2],[2,3,4]]) == -1
    @test max_num_edges_to_remove(4, [[3,1,2],[3,2,3],[1,1,4],[2,1,4]]) == 0
end