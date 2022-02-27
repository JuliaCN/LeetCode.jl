@testset "1567.maximum-length-of-subarray-with-positive-product.jl" begin
    @test get_max_len([1, -2, -3, 4]) == 4
    @test get_max_len([0, 1, -2, -3, -4]) == 3
    @test get_max_len([-1, -2, -3, 0, 1]) == 2
end
