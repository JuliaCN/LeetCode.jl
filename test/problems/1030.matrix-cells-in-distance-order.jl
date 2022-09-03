@testset "1030.matrix-cells-in-distance-order.jl" begin
    @test all_cells_dist_order(2, 3, 2, 3) == [(2, 3), (1, 3), (2, 2), (1, 2), (2, 1), (1, 1)]
    @test all_cells_dist_order(2, 2, 1, 2) == [(1, 2), (1, 1), (2, 2), (2, 1)]
    @test all_cells_dist_order(1, 2, 1, 1) == [(1, 1), (1, 2)] 
end
