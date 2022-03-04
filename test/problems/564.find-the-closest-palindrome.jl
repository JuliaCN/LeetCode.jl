@testset "564.Find-the-Closest-Palindrome.jl" begin
    @test nearest_palindromic("1231") == "1221"
    @test nearest_palindromic("99") == "101"
    @test nearest_palindromic("100") == "99"
    @test nearest_palindromic("900") == "898"
    @test nearest_palindromic("101") == "99"
    @test nearest_palindromic("1") == "0"
    @test nearest_palindromic("10") == "9"
    @test nearest_palindromic("123") == "121"
end
