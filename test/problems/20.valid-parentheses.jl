@testset "20.valid-parentheses.jl" begin
    @test is_valid_parentheses("()") == true
    @test is_valid_parentheses("()[]{}") == true
    @test is_valid_parentheses("(]") == false
    @test is_valid_parentheses("([)]") == false
    @test is_valid_parentheses("{[]}") == true
end
