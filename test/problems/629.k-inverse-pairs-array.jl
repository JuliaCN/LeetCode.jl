@testset "629.k-inverse-pairs-array" begin
    @test k_inverse_pairs(1000, 1000) == 663677020
    @test k_inverse_pairs(3, 0) == 1
    @test k_inverse_pairs(3, 1) == 2  
end