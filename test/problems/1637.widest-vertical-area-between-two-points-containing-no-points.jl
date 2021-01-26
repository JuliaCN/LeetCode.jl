@testset "1637.widest-vertical-area-between-two-points-containing-no-points.jl" begin
    @test max_width_of_vertical_area([[8,7],[9,9],[7,4],[9,7]]) == 1
    @test max_width_of_vertical_area([[3,1],[9,0],[1,0],[1,4],[5,3],[8,8]]) == 3
end