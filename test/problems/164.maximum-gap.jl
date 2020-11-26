@testset "164.maximum-gap.jl" begin
    @test maximum_gap([3, 6, 9, 1]) == 3
    @test maximum_gap(Int[]) == 0
end
