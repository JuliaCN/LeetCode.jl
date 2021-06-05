@testset "1599.maximum-profit-of-operating-a-centennial-wheel.jl" begin
    @test min_operations_max_profit([8, 3], 5, 6) == 3
    @test min_operations_max_profit([4, 1, 1, 1], 5, 6) == 1
    @test min_operations_max_profit([4, 0, 0, 4], 5, 6) == 4
    @test min_operations_max_profit([3, 4, 0, 5, 1], 1, 92) == -1
    @test min_operations_max_profit([10,10,6,4,7], 3, 8) == 9
end