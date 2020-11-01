@testset "10.regular-expression-matching.jl" begin
    @test is_match("aa", "a") == false
    @test is_match("aa", "a*") == true
    @test is_match("ab", ".*") == true
    @test is_match("aab", "c*a*b") == true
    @test is_match("mississippi", "mis*is*p*.") == false
end
