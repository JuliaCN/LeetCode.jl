@testset "678.valid-parenthesis-string.jl" begin
    @test check_valid_string("(())((())()()(*)(*()(())())())()()((()())((()))(*") == false
    @test check_valid_string(")(") == false
    @test check_valid_string("(*))") == true
    
end