@testset "771.jewels-and-stones.jl" begin
    @test num_jewels_in_stones("aA", "aAAbbbb") == 3
    @test num_jewels_in_stones("z", "ZZ") == 0
end