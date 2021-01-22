@testset begin
    @test find_smallest_set_of_vertices(6, [[0,1],[0,2],[2,5],[3,4],[4,2]]) == [0, 3]
    @test find_smallest_set_of_vertices(5, [[0,1],[2,1],[3,1],[1,4],[2,4]]) == [0, 2, 3]
end