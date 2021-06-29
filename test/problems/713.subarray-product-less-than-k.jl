@testset "713.subarray-product-less-than-k.jl" begin
    @test num_subarray_productLess_than_k([10, 5, 2, 6], 100) == 8
    @test num_subarray_productLess_than_k([40, 33, 8, 49, 36, 7, 49, 46, 32, 7, 20, 28, 43,
                                           2, 41, 35, 2, 2, 19, 28, 16, 9, 30, 40, 23, 17,
                                           47, 33, 18, 41, 28, 28, 7, 16, 36, 40, 48, 50,
                                           32, 16, 5, 2, 47, 40, 39, 12, 50, 49, 13, 4],
                                          300) == 70
end
