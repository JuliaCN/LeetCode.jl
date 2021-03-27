@testset "191.number-of-1-bits.jl" begin
    @test hamming_weight(0b00000000000000000000000000001011) == 3
    @test hamming_weight(0b00000000000000000000000010000000) == 1
    @test hamming_weight(0b11111111111111111111111111111101) == 31
end
