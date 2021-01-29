@testset "792.number-of-matching-subsequences.jl" begin
    @test num_matching_subseq("dcaog", ["cat", "cop", "dog", "cao"]) == 2
    @test num_matching_subseq("abcde", ["a", "bb", "acd", "ace"]) == 3
end