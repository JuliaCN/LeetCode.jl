@testset "204.count-primes.jl" begin
    @test min_subarray_len(7, [2,3,1,2,4,3]) == 2
    @test min_subarray_len(5, [2,3,1,2,4,3]) == 2
    @test min_subarray_len(3, [2,3,1,2,4,3]) == 1
    @test min_subarray_len(15, [2,3,1,2,4,3]) == 6
end

 
