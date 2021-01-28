@testset "781.rabbits-in-forest.jl" begin
    @test num_rabbits([1,0,1,0,0]) == 5
    @test num_rabbits([1, 1, 2]) == 5
    @test num_rabbits([10, 10, 10]) == 11
    @test num_rabbits([0,0,1,1,1]) == 6
end