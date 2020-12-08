@testset "62.unique-paths.jl" begin
    @test unique_paths(3, 2) == 3
    @test unique_paths(3, 6) == 21
    @test unique_paths(7, 3) == 28
    @test unique_paths(5, 8) == 330
    @test unique_paths(7, 10) == 5005
end