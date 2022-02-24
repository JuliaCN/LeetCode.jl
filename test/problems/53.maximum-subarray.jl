@testset "53.maximum-subarray.jl" begin
    @test maximum_subarray([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
    @test maximum_subarray([-1]) == -1
    @test maximum_subarray([5, 4, -1, 7, 8]) == 23
    @test maximum_subarray([-2, 1]) == 1
    @test maximum_subarray([
        8, -2, -4, -1, -8, 3, 8, 8, 3, 4, 2, -9, -1, -3, -6, 8, -3, 9
    ]) == 28
end
