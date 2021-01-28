@testset "787.cheapest-flights-within-k-stops.jl" begin
    @test find_cheapest_price(3, [[1,2,100],[2,3,100],[1,3,500]], 1, 3, 1) == 200
    @test find_cheapest_price(3, [[1,2,100],[2,3,100],[1,3,500]], 1, 3, 0) == 500
end