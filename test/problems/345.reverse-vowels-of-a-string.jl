@testset "345.reverse-vowels-of-a-string.jl" begin
    @test reverse_vowels("hello") == "holle"
    @test reverse_vowels("leetcode") == "leotcede"
end
