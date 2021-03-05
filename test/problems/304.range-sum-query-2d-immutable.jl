@testset "304.range-sum-query-2d-immutable.jl" begin
    matrix = NumMatrix([
        [3, 0, 1, 4, 2],
        [5, 6, 3, 2, 1],
        [1, 2, 0, 1, 5],
        [4, 1, 0, 1, 7],
        [1, 0, 3, 0, 5],
    ])
    @test sum_region(matrix, 3, 2, 5, 4) == 8
    @test sum_region(matrix, 2, 2, 3, 3) == 11
    @test sum_region(matrix, 2, 3, 3, 5) == 12
end
