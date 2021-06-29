@testset "672.bulb-switcher-ii.jl" begin
    @test flip_lights(0, 0) == 1
    @test flip_lights(2, 1) == 3
    @test flip_lights(2, 2) == 4
    @test flip_lights(2, 3) == 4
end