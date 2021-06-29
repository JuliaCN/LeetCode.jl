@testset "688.knight-probability-in-chessboard.jl" begin
    @test knight_probability(3, 2, 0, 0) ≈ 0.0625
    @test isapprox(knight_probability(8, 10, 4, 5), 0.0773899; atol = 6)
end