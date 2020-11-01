@testset "32.longest-valid-parentheses.jl" begin
    @test longest_valid_parentheses("(())") == 4
    @test longest_valid_parentheses(")()())") == 4
    @test longest_valid_parentheses("(()") == 2
end
