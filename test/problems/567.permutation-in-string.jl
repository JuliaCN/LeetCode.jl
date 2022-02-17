@testset "567.permutation-in-string.jl" begin
    @test check_inclusion("abc", "ccccbbbbaaaa") == false
    @test check_inclusion("ab", "eidbaooo") == true
    @test check_inclusion("ab", "eidboaoo") == false
    @test check_inclusion("hello", "ooolleoooleh") == false
end