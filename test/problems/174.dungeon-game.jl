@testset "174.dungeon-game.jl" begin
    @test calculate_minimum_hp([[-2,-3,3],[-5,-10,1],[10,30,-5]]) == 7
    @test calculate_minimum_hp([[9, 0, 0, -6, 5], [6, 2, 6, 8, -10], [-1, -5, 0, 6, 1], [-1, 8, -6, -5, -10]]) == 1
end
