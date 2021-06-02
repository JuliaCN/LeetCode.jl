@testset "79.word-search.jl" begin
    @test is_word_exist(hcat([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']]...), "ABCCED")
    @test is_word_exist(hcat([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']]...), "SEE")

    @test !is_word_exist(hcat([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']]...), "ABCB")
end