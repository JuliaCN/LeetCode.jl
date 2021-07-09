@testset "930.binary-subarrays-with-sum.jl" begin
    @test num_subarrays_with_sum([1,0,1,0,1], 2) == 4
    @test num_subarrays_with_sum([0,0,0,0,0], 0) == 15
end