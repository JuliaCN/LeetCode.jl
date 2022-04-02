@testset "139.word-break.jl" begin
    tcase1 = ("leetcode", ["leet", "code"])
    tcase2 = ("applepenapple", ["apple", "pen"])
    tcase3 = ("bb", ["a", "b", "bbb", "bbbb"])
    fcase1 = ("catsandog", ["cats", "dog", "sand", "and", "cat"])
    fcase2 = ("a", ["b"])
    fcase3 = ("a"^150 * "b", ["a"^i for i in 1:10])
    @test word_break(tcase1...) && word_break_bfs(tcase1...)
    @test word_break(tcase2...) && word_break_bfs(tcase2...)
    @test word_break(tcase3...) && word_break_bfs(tcase3...)
    @test !word_break(fcase1...) && !word_break_bfs(fcase1...)
    @test !word_break(fcase2...) && !word_break_bfs(fcase2...)
    @test !word_break(fcase3...) && !word_break_bfs(fcase3...)
end
