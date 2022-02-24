@testset "387.first-unique-character-in-a-string.jl" begin
    @test first_unique_char("leetcode") == 1
    @test first_unique_char("loveleetcode") == 3
end
