@testset "50.powx-n.jl" begin
    @test my_pow(2.0, 0) ≈ 1.0
    @test all(my_pow(2.0, i) ≈ 2.0^i for i in 1:20)
    @test all(my_pow(-2.0, i) ≈ (-2.0)^i for i in 1:20)
end
