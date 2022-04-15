@testset "1025.divisor-game.jl" begin
    @test divisor_game(2) == true
    @test divisor_game(3) == false
end
