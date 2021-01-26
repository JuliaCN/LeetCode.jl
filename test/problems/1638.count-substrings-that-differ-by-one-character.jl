@testset "1638.count-substrings-that-differ-by-one-character.jl" begin
    @test count_substrings("ab", "bb") == 3
    @test count_substrings("a", "a") == 0
    @test count_substrings("aba", "baba") == 6
    @test count_substrings("abe", "bbc") == 10
end