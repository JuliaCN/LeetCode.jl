@testset "1320.minimum-distance-to-type-a-word-using-two-fingers.jl" begin
    @test minimum_distance("HAPPY") == 6
    @test minimum_distance("CAKE") == 3
    @test minimum_distance("NEW") == 3
    @test minimum_distance("YEAR") == 7
end