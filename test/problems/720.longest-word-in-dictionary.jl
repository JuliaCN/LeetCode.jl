@testset "720.longest-word-in-dictionary.jl" begin
    @test longest_common_word(["w", "wo", "wor", "worl", "world"]) == "world"
    @test longest_common_word(["a", "banana", "app", "appl", "ap", "apply", "apple"]) ∈
        ("apply", "apple")
end
