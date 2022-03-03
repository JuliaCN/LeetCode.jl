@testset "139.word-break.jl" begin
    @test word_break("leetcode", ["leet", "code"]) == true
    @test word_break("catsandog", ["cats", "dog", "sand", "and", "cat"]) == false
    @test word_break("applepenapple", ["apple", "pen"]) == true
    @test word_break("a", ["b"]) == false
    @test word_break("a"^150 * "b", ["a"^i for i in 1:10]) == false
    @test word_break("bb", ["a", "b", "bbb", "bbbb"]) == true
end
