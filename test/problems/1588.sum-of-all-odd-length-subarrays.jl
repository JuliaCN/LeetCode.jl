@testset "1588.sum-of-all-odd-length-subarrays.jl" begin
    @test sum_odd_length_subarrays([1, 4, 2, 5, 3]) == 58
    @test sum_odd_length_subarrays([1, 2]) == 3
    @test sum_odd_length_subarrays([10, 11, 12]) == 66
end
