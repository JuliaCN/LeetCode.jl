@testset "867.transpose-matrix.jl" begin
    @test transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    @test transpose([[1, 2, 3], [4, 5, 6]]) == [[1, 4], [2, 5], [3, 6]]
end
