@testset "150.evaluate-reverse-polish-notation.jl" begin
    @test eval_rpn(["4", "13", "5", "/", "+"]) == 6
    @test eval_rpn(["2", "1", "+", "3", "*"]) == 9
    @test eval_rpn(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]) == 22
    @test eval_rpn(["2", "1", "-", "3", "*"]) == 3
end
