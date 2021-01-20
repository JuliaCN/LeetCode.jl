@testset "547.friend-circles.jl" begin
    @test reverse_words("  hello world!  ") == "world! hello"
    @test reverse_words("a good   example") == "example good a"
    @test reverse_words("  Bob    Loves  Alice   ") == "Alice Loves Bob"
    @test reverse_words("Alice does not even like bob") == "bob like even not does Alice"
end
