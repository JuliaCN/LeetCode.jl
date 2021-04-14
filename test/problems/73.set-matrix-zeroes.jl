@testset "73.set-matrix-zeroes.jl" begin
    @test set_zeroes([[1, 1, 1], [1, 0, 1], [1, 1, 1]]) == [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
    @test set_zeroes([[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]) ==
          [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
end
