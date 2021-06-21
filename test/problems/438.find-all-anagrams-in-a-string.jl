@testset "438.find-all-anagrams-in-a-string.jl" begin
    @test find_anagrams("cbaebabacd", "abc") == [1, 7]
    @test find_anagrams("abab", "ab") == [1, 2, 3]
    @test find_anagrams("abab", "ab") == [1, 2, 3] 
end