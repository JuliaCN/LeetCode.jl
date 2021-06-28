@testset "638.shopping-offers.jl" begin
    @test shopping_offers([2, 5], [[3, 0, 5], [1, 2, 10]], [3, 2]) == 14
    @test shopping_offers([2, 3, 4], [[1, 1, 0, 4], [2, 2, 1, 9]], [1, 2, 1]) == 11
    @test shopping_offers([0, 0, 0], [[1, 1, 0, 4], [2, 2, 1, 9]], [1, 1, 1]) == 0
end
