@testset "1054.distant-barcodes.jl" begin
    isbar(x::Vector{Int}) = all(x[i] != x[i + 1] for i in 1:(length(x) - 1))
    @test isbar(rearrange_barcodes([1, 1, 1, 2, 2, 2]))
    @test isbar(rearrange_barcodes([1, 1, 1, 1, 2, 2, 3, 3]))
    @test isbar(rearrange_barcodes([3, 4, 4, 3, 1, 3, 3, 1, 2, 2]))
end
