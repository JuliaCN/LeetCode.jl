@testset "121.best-time-to-buy-and-sell-stock.jl" begin
    @test max_profit_121([7, 6, 4, 3, 1]) == 0
    @test max_profit_121([7, 1, 5, 3, 6, 4]) == 5
    @test max_profit_121([3, 2, 6, 5, 0, 3]) == 4
end
