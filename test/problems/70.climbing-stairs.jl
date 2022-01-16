@testset "70.climbing-stairs.jl" begin
    @test climbing_stairs(1) == 1
    @test climbing_stairs(2) == 2
    @test climbing_stairs(3) == 3
    @test climbing_stairs(8) == 34
    @test climbing_stairs(45) == 1836311903
end
