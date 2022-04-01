@testset "693.binary-number-with-alternating-bits.jl" begin
    @test !any(has_alternating_bits.(6:9))
    @test has_alternating_bits(5)
    @test has_alternating_bits(10)
end
