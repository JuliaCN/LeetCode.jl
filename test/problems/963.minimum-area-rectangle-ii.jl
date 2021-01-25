@testset "963.minimum-area-rectangle-ii.jl" begin
    @test min_area_free_rect([[3,1],[1,1],[0,1],[2,1],[3,3],[3,2],[0,2],[2,3]]) == 2.0
    @test min_area_free_rect([[0,1],[2,1],[1,1],[1,0],[2,0]]) == 1.0
    @test min_area_free_rect([[1,2],[2,1],[1,0],[0,1]]) == 2.0
    @test min_area_free_rect([[0,3],[1,2],[3,1],[1,3],[2,1]]) == 0.0
end