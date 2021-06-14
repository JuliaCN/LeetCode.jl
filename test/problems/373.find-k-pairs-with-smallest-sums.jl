@testset "373.find-k-pairs-with-smallest-sums.jl" begin
    @test k_smallest_pairs([1, 7, 11], [2, 4, 6], 3) == [(1, 2), (1, 4), (1, 6)]
    @test k_smallest_pairs([1,1,2], [1, 2, 3], 2) == [(1, 1), (1, 1)]
    @test k_smallest_pairs([1,2], [3], 2) == [(1, 3), (2, 3)]    
end
