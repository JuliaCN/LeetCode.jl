@testset "640.solve-the-equation.jl" begin
    @test solve_equation("x+5-3+x=6+x-2") == "x=2"
    @test solve_equation("x=x") == "Infinite solutions"
    @test solve_equation("2x=x") == "x=0"
    @test solve_equation("2x+3x-6x=x+2") == "x=-1"
    @test solve_equation("x=x+2") == "No solution"
end
