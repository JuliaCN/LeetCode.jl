@testset "42.trapping-rain-water.jl" begin
    @test trap_rain([4, 2, 0, 3, 2, 5]) == 9
    @test trap_rain([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6
end