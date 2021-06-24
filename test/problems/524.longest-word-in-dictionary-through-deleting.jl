@testset "524.longest-word-in-dictionary-through-deleting.jl" begin
    @test find_longest_word("abpcplea", ["ale","apple","monkey","plea"]) == "apple"
    @test find_longest_word("abpcplea", ["a","b","c"]) == "a"
end