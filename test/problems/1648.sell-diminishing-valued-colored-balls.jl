@testset "5563.sell-diminishing-valued-colored-balls.jl" begin
    @test max_profit([497978859, 167261111, 483575207, 591815159], 836556809) == 373219333
    @test max_profit([2,5], 4) == 14
    @test max_profit([3,5], 6) == 19
    @test max_profit([2,8,4,10,6], 20) == 110
    @test max_profit([1000000000], 1000000000) == 21
end
