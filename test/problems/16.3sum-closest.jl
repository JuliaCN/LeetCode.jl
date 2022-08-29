@testset "16.3sum-closest.jl" begin
    @test three_sum_closest([-1, 2, 1, -4], 1) == 2
    @test three_sum_closest([0, 0, 0], 1) == 0
end
