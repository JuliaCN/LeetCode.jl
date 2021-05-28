@testset "30.substring-with-concatenation-of-all-words.jl" begin
    @test find_substring("barfoothefoobarman", ["foo","bar"]) == [1, 10]
    @test find_substring("wordgoodgoodgoodbestword", ["word","good","best","word"]) == Int[]
    @test find_substring("barfoofoobarthefoobarman", ["bar","foo","the"]) == [7, 10, 13]
end