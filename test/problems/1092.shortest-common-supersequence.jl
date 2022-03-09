@testset "1092.shortest-common-supersequence.jl" begin
    @test shortest_common_supersequence("abac", "cab") == "cabac"
    @test shortest_common_supersequence("a", "b") == "ba"
    @test shortest_common_supersequence("cgjmcmrapzvicukazaft", "bjyrpuldxazepiougskd") ==
        "bcgjymcmrpuldxazepzviocugskdazaft"
end
