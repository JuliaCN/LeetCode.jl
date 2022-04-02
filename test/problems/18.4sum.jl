@testset "18.4sum.jl" begin
    @test four_sum([1, 0, -1, 0, -2, 2], 0) ==
        [(-2, -1, 1, 2), (-2, 0, 0, 2), (-1, 0, 0, 1)]
    @test four_sum(Int[], 0) == NTuple{4,Int}[]
    @test four_sum([-3, -1, 0, 2, 4, 5], 1) == [(-3, -1, 0, 5)]
    @test four_sum([1, 2, 2, 2, 2, 2, 2], 8) == [(2, 2, 2, 2)]
end
