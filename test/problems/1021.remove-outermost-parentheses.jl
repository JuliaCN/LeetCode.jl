@testset "1021.remove-outermost-parentheses.jl" begin
    @test remove_outer_parentheses("(()())(())(()(()))") == "()()()()(())"
    @test remove_outer_parentheses("(()())(())") == "()()()"
    @test remove_outer_parentheses("()()") == ""
end
