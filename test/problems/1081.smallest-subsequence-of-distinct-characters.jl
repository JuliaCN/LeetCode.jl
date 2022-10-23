@testset "1081.smallest-subsequence-of-distinct-characters.jl" begin
    @test smallest_subsequence("cbacdcbc") == "acdb"
    @test smallest_subsequence("bbaeacc") == "baec"
    @test smallest_subsequence("qdugpqswzzwgqojknfsffmydsxrduzfijpfczeeckgnrlgvajv") ==
        "dgpqswofmyxruiczeknlajv"
end
