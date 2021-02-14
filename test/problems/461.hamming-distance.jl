@testset "461.hamming-distance.jl" begin
    @test hamming_distance(1, 4) == 2
    @test hamming_distance(235, 63626) == 8
end