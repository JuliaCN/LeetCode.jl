@testset "682.baseball-game.jl" begin
    @test calculate_points(["5", "2", "C", "D", "+"]) == 30
    @test calculate_points(["5", "-2", "4", "C", "D", "9", "+", "+"]) == 27
    @test calculate_points(["1"]) == 1
    @test calculate_points(["4", "2", "C", "C"]) == 0
end
