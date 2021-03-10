@testset "224.basic-calculator.jl" begin
    @test calculate("1 + 1") == 2
    @test calculate(" 2-1 + 2 ") == 3
    @test calculate(" 2-1 + 2 ") == 3
    @test calculate("(1+(4+5+2)-3)+(6+8)") == 23
end
