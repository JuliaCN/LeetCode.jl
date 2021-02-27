@testset "395.longest-substring-with-at-least-k-repeating-characters.jl" begin
    @test longest_substring_395("ababbc", 2) == 5
    @test longest_substring_395("aaabb", 3) == 3
end