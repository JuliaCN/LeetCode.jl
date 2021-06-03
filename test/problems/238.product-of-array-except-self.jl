@testset "238.product-of-array-except-self.jl" begin
    @test product_except_self([1, 2, 3, 4]) == [24, 12, 8, 6]
    @test product_except_self([1, 2, 3, 4, 0]) == [0, 0, 0, 0, 24]
    @test product_except_self([1, 2, 0, 4, 0]) == [0, 0, 0, 0, 0]
end
