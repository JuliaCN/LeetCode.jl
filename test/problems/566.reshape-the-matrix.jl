@testset "566.reshape-the-matrix.jl" begin
    @test matrixReshape([[1,2], [3,4]], 1, 4) == [[1,2,3,4]]
    @test matrixReshape([[1,2], [3,4]], 2, 4) == [[1,2], [3,4]]
end