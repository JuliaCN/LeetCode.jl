@testset "1003.check-if-word-is-valid-after-substitutions.jl" begin
    @test is_valid_abc_str("aabcbc") == true
    @test is_valid_abc_str("cababc") == false
    @test is_valid_abc_str("abccba") == false
    @test is_valid_abc_str("abcabcababcc") == true
end