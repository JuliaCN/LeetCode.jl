@testset "1601.maximum-number-of-achievable-transfer-requests.jl" begin
    @test maximum_requests(4, [[0,3],[3,1],[1,2],[2,0]]) == 4
    @test maximum_requests(3, [[0,0],[1,2],[2,1]]) == 3
    @test maximum_requests(5, [[0,1],[1,0],[0,1],[1,2],[2,0],[3,4]]) == 5
    @test maximum_requests(20, [[7, 11], [6, 4], [12, 15], [8, 3], [13, 12], [14, 19], [5, 16], [5, 6], [15, 0], [6, 5], [6, 0], [12, 15], [18, 8], [15, 5], [3, 16], [18, 13]]) == 2
end
