@testset "991.broken-calculator.jl" begin
    @test broken_calc(2, 3) == 2
    @test broken_calc(3, 10) == 3
    @test broken_calc(5, 8) == 2
    @test broken_calc(1024, 1) == 1023
end