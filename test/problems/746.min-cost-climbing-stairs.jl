@testset "746.min-cost-climbing-stairs.jl" begin
    @test min_cost_climbing_stairs([12, 10]) == 10
    @test min_cost_climbing_stairs([10, 15, 20]) == 15
    @test min_cost_climbing_stairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]) == 6
end
