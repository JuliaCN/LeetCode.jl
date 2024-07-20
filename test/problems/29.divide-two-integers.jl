@testset "29.divide-two-integers.jl" begin
    @test divide(10, 3) == 3
    @test divide(7, -3) == -2
    @test divide(0, 1) == 0
    @test divide(1, 1) == 1
end
