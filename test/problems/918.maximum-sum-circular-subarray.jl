@testset "918.maximum-sum-circular-subarray.jl" begin
    @test max_subarray_sum_circular([1,-2,3,-2]) == 3
    @test max_subarray_sum_circular([5,-3,5]) == 10
    @test max_subarray_sum_circular([3,-1,2,-1]) == 4
    @test max_subarray_sum_circular([3,-2,2,-3]) == 3
    @test max_subarray_sum_circular([-2,-3,-1]) == -1
end