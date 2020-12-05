@testset "679.24-game.jl" begin
    @test least_interval(['A','A','A','B','B','B'], 2) == 8
    @test least_interval(['A','A','A','B','B','B'], 0) == 6
    @test least_interval(['A','A','A','B','B','B'], 1) == 6
    @test least_interval(['A','A','A','A','A','A','B','C','D','E','F','G'], 2) == 16
end
