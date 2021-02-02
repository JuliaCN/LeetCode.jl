@testset "424.longest-repeating-character-replacement.jl" begin
    @test character_replacement("ABAB", 2) == 4
    @test character_replacement("AABABBA", 1) == 4
    @test character_replacement("AABCABBB", 2) == 6
end