@testset "994.rotting-oranges.jl" begin
    @test oranges_rotting([[2, 1, 1], [0, 1, 1], [1, 0, 1]]) == -1
    @test oranges_rotting([[2, 1, 1], [1, 1, 0], [0, 1, 1]]) == 4
    @test oranges_rotting([[0, 2]]) == 0
end