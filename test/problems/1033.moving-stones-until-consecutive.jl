@testset "1033.moving-stones-until-consecutive.jl" begin
    @test num_moves_stones(1, 2, 5) == (1, 2)
    @test num_moves_stones(4, 3, 2) == (0, 0)
    @test num_moves_stones(6, 43, 76) == (2, 68)
end
