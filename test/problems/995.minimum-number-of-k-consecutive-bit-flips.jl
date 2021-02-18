@testset "995.minimum-number-of-k-consecutive-bit-flips.jl" begin
    @test min_k_bit_flips([0, 1, 0], 1) == 2
    @test min_k_bit_flips([1, 1, 0], 2) == -1
    @test min_k_bit_flips([0, 0, 0, 1, 0, 1, 1, 0], 3) == 3
    @test min_k_bit_flips([1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
                           0, 1, 0, 0, 0, 0, 1, 0], 2) == -1
end