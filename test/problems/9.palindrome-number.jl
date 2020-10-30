@testset "9.palindrome-number.jl" begin
@test is_palindrome(121) == true
@test is_palindrome(-121) == false
@test is_palindrome(10) == false
end