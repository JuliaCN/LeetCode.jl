@testset "647.palindromic-substrings.jl" begin
    @test count_substrings("abc") == 3
    @test count_substrings("aaa") == 6
    @test count_substrings("a" ^ 10) == sum(1:10) 
    @test count_substrings("abcdefghijklmnnmlkjihgfedcba") == 42  
end