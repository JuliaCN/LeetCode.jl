@testset "459.repeated-substring-pattern.jl" begin
    @test repeated_substring_pattern("abab") == true
    @test repeated_substring_pattern("aba") == false
    @test repeated_substring_pattern("abcabcabcabc") == true
end