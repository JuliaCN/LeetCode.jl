@testset "63.unique-paths-ii.jl" begin
    @test unique_path_with_obstacles_63([[0, 0, 0], [0, 1, 0], [0, 0, 0]]) == 2
    @test unique_path_with_obstacles_63([[0, 1], [0, 0]]) == 1
    @test unique_path_with_obstacles_63([
        [0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]
    ]) == 0
    @test unique_path_with_obstacles_63([[0]]) == 1
end
