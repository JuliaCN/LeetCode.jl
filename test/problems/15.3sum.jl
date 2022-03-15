@testset "15.3sum.jl" begin
    @test three_sum([-1, 0, 1, 2, -1, -4]) == [(-1, -1, 2), (-1, 0, 1)]
    @test three_sum([0]) == three_sum!(Int[]) == NTuple{3,Int}[]
    @test three_sum([1, 1, -2]) == [(-2, 1, 1)]
    @test three_sum([0, 0, 0, 0]) == [(0, 0, 0)]
end
