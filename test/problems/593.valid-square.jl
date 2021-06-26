@testset "593.valid-square.jl" begin
    @test valid_square([[0, 0], [1, 1], [1, 0], [0, 1]]) == true
    @test valid_square([[0, 0], [1, 1], [1, 0], [0, -1]]) == false
    @test valid_square([[0, 1], [2, 0], [3, 2], [1, 3]]) == true
end