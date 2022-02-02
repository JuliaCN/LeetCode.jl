@testset "3.longest-substring-without-repeating-characters.jl" begin
    @test length_of_longest_substring("abcabcbb") == 3
    @test length_of_longest_substring("b") == 1
    @test length_of_longest_substring("bbbb") == 1
    @test length_of_longest_substring("pwwkew") == 3
    @test length_of_longest_substring("") == 0
    @test length_of_longest_substring("abac") == 3
end
