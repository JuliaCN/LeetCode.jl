@testset "1043.partition-array-for-maximum-sum.jl" begin
    @test max_sum_after_partitioning([1, 4, 1, 5, 7, 3, 6, 1, 9, 9, 3], 4) == 83
    @test max_sum_after_partitioning([1], 1) == 1
    @test max_sum_after_partitioning([1, 15, 7, 9, 2, 5, 10], 3) == 84
end
