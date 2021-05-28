@testset "30.substring-with-concatenation-of-all-words.jl" begin
    @test find_word_concatenation("barfoothefoobarman", ["foo","bar"]) == [1, 10]
    @test find_word_concatenation("wordgoodgoodgoodbestword", ["word","good","best","word"]) == Int[]
    @test find_word_concatenation("barfoofoobarthefoobarman", ["bar","foo","the"]) == [7, 10, 13]
end