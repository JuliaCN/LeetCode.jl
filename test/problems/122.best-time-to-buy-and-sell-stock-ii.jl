@testset "122.best-time-to-buy-and-sell-stock-ii.jl" begin
    @test max_profit([7,1,5,3,6,4]) == 7
    @test max_profit([1,2,3,4,5]) == 4
    @test max_profit([7,6,4,3,1]) == 0
end
