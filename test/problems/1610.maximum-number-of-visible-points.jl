@testset "1610.maximum-number-of-visible-points.jl" begin
    @test max_visible_points([[2, 1], [2, 2], [3, 3]], 90, [1, 1]) == 3
    @test max_visible_points([[2, 1], [2, 2], [3, 4], [1, 1]], 90, [1, 1]) == 4
    @test max_visible_points([[1, 0], [2, 1]], 13, [1, 1]) == 1
end