@testset "467.unique-substrings-in-wraparound-string.jl" begin
    @test find_substring_in_wrapround_string("a") == 1
    @test find_substring_in_wrapround_string("abc") == 6
    @test find_substring_in_wrapround_string("aca") == 2
end