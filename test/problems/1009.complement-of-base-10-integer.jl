@testset "1009.complement-of-base-10-integer.jl" begin
    @test bitwise_complement(7) == 0
    @test bitwise_complement(5) == 2
    @test bitwise_complement(10) == 5
end