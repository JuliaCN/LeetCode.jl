@testset "58.length-of-last-word.jl" begin
    @test length_of_last_word("Hello World") == 5
    @test length_of_last_word("   fly me   to   the moon  ") == 4
    @test length_of_last_word("luffy is still joyboy") == 6
end
