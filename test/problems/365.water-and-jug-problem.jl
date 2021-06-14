@testset "365.water-and-jug-problem.jl" begin
    @test can_measure_water(3, 5, 4)
    @test !can_measure_water(2, 6, 5)
    @test can_measure_water(11, 3, 13)
    @test !can_measure_water(11, 3, 20)
end