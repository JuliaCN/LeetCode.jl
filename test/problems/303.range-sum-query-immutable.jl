@testset "303.range-sum-query-immutable.jl" begin
    @test sum_range(NumArray([-2, 0, 3, -5, 2, -1]), 1, 3) == 1
    @test sum_range(NumArray([-2, 0, 3, -5, 2, -1]), 3, 6) == -1
    @test sum_range(NumArray([-2, 0, 3, -5, 2, -1]), 1, 6) == -3
end
