@testset "523.continuous-subarray-sum.jl" begin
    @test check_subarray_sum([23, 2, 4, 6, 7], 6) == true
    @test check_subarray_sum([23, 2, 6, 4, 7], 6) == true
    @test check_subarray_sum([23, 2, 6, 4, 7], 13) == false
end
