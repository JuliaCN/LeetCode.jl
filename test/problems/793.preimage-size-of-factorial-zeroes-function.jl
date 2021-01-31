@testset "793.preimage-size-of-factorial-zeroes-function.jl" begin
    @test preimage_size_fzf(0) == 5
    @test preimage_size_fzf(1000000) == 5
    @test preimage_size_fzf(5) == 0
end