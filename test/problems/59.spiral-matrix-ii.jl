@testset "59.spiral-matrix-ii.jl" begin
    @test generate_matrix(3) == [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
    @test generate_matrix(1) == [[1]]
    @test generate_matrix(5) == [
        [1, 2, 3, 4, 5],
        [16, 17, 18, 19, 6],
        [15, 24, 25, 20, 7],
        [14, 23, 22, 21, 8],
        [13, 12, 11, 10, 9],
    ]
end
