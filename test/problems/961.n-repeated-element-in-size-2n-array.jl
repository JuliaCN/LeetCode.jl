@testset "961.n-repeated-element-in-size-2n-array.jl" begin
    @test repeated_n_times([5,1,5,2,5,3,5,4]) == 5
    @test repeated_n_times([2,1,2,5,3,2]) == 2
    @test repeated_n_times([1,2,3,3]) == 3
end