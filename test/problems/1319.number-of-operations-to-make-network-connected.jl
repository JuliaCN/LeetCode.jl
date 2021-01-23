@testset "1319.number-of-operations-to-make-network-connected.jl" begin
    @test make_connected(4, [[1,2],[1,3],[2,3]]) == 1
    @test make_connected(6, [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4]]) == 2
    @test make_connected(6, [[1, 2], [1, 3], [1, 4], [2, 3]]) == -1
    @test make_connected(5, [[1, 2], [1, 3], [4, 5], [3, 4]]) == 0
end
