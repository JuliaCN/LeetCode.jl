@testset "649.dota2-senate.jl" begin
    @test predict_party_victory("RDD") == "Dire"
    @test predict_party_victory("RD") == "Radiant"
end
