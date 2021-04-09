@testset "719.find-k-th-smallest-pair-distance.jl" begin
    @test smallest_distance_pair([1, 3, 1], 1) == 0
    @test smallest_distance_pair([1, 5, 3, 1], 3) == 2
end
