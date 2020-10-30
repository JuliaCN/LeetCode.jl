@testset "5.longest-palindromic-substring.jl" begin
    @test longest_palindrome("babad") == "bab"
    @test longest_palindrome("cbbd") == "bb"
end
