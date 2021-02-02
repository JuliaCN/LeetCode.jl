@testset "458.poor-pigs.jl" begin
    @test poor_pigs(1000, 15, 60) == 5
    @test poor_pigs(1000, 15, 15) == 10
end