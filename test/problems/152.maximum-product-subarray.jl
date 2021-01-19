@testset "152.maximum-product-subarray.jl" begin
    @test max_product([2,3,-2,4]) == 6
    @test max_product([-2,0,-1]) == 0
    @test max_product([-3, 1, -2, 4, 0, 2, 0, 3, 3, 3, 3, 2, 2, 3, -2, 0, 4, -1, 1, 1, 1, 2, -2, 0, -2, 4, 1, 2, -3, 3]) == 972
end
