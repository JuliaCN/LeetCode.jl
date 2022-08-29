@testset "1281.subtract-the-product-and-sum-of-digits-of-an-integer.jl" begin
    @test subtract_prod_sum(234) == 15
    @test subtract_prod_sum(4421) == 21
end
