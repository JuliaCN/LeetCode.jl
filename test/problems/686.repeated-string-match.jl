@testset "686.repeated-string-match.jl" begin
    @test repeated_string_match("abcd", "cdabcdab") == 3
    @test repeated_string_match("a", "aa") == 2
    @test repeated_string_match("a", "a") == 1
    @test repeated_string_match("abc", "xyzs") == -1 
end