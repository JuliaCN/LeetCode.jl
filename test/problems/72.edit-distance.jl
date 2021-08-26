@testset "72.edit-distance.jl" begin
    @test min_distance("horse", "ros") == 3
    @test min_distance("intention", "execution") == 5
    @test min_distance("", "") == 0
end