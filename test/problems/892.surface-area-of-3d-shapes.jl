@testset "892.surface-area-of-3d-shapes.jl" begin
    @test surface_area([[1,2],[3,4]]) == 34
    @test surface_area([[1,0],[0,2]]) == 16
    @test surface_area([[1,1,1],[1,0,1],[1,1,1]]) == 32
    @test surface_area([[2,2,2],[2,1,2],[2,2,2]]) == 46
    @test surface_area([[2]]) == 10
    @test surface_area(hcat([2,2,2],[2,1,2],[2,2,2])) == 46
end