@testset "1137.n-th-tribonacci-number.jl" begin
    @test tribonacci_1137(0) == 0
    @test tribonacci_1137(3) == 2
    @test tribonacci_1137(4) == 4
    @test tribonacci_1137(37) == 2082876103
end
