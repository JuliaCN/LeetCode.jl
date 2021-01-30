@testset "1001.grid-illumination.jl" begin
    @test grid_illumination(5, [(0,0),(4,4)], [(1,1),(1,1)]) == [1, 1]
    @test grid_illumination(5, [(0,0),(4,4)], [(1,1),(1,0)]) == [1, 0]
    @test grid_illumination(5, [(0,0),(0,4)], [(0,4),(0,1),(1,4)]) == [1, 1, 0]
end