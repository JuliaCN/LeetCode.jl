@testset "1601.maximum-number-of-achievable-transfer-requests.jl" begin
    @test maximum_requests(5, [[0, 1], [1, 0], [0, 1], [1, 2], [2, 0], [3, 4]]) == 5
    @test maximum_requests(3, [[0, 0], [1, 2], [2, 1]]) == 3
    @test maximum_requests(4, [[0, 3], [3, 1], [1, 2], [2, 0]]) == 4
    @test maximum_requests(
        20,
        [
            [0, 7],
            [2, 0],
            [2, 15],
            [5, 6],
            [6, 16],
            [6, 16],
            [6, 17],
            [7, 14],
            [11, 2],
            [13, 2],
            [14, 11],
            [15, 6],
            [16, 5],
            [16, 6],
            [17, 13],
            [19, 10],
        ],
    ) == 15
end
