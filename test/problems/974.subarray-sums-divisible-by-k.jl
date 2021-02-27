@testset "974.subarray-sums-divisible-by-k.jl" begin
    @test subarrays_div_by_k([4,5,0,-2,-3,1], 5) == 7
end