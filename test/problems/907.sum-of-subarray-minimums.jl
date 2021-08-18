@testset "907.sum-of-subarray-minimums.jl" begin
    @test sum_subarray_mins([3,1,2,4]) == 17
    @test sum_subarray_mins([11,81,94,43,3]) == 444
end
