@testset "1005.maximize-sum-of-array-after-k-negations.jl" begin
    @test largest_sum_after_k_negations([4,2,3], 1) == 5
    @test largest_sum_after_k_negations([3,-1,0,2], 3) == 6
    @test largest_sum_after_k_negations([2,-3,-1,5,-4], 2) == 13
end