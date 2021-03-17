@testset "115.distinct-subsequences.jl" begin
    @test num_distinct("rabbbit", "rabbit") == 3
    @test num_distinct("babgbag", "bag") == 5
end