@testset "735.asteroid-collision.jl" begin
    @test asteroid_collision([5, 10, -5]) == [5, 10]
    @test asteroid_collision([8, -8]) == Int[]
    @test asteroid_collision([10, 2, -5]) == [10]
    @test asteroid_collision([-2, -1, 1, 2]) == [-2, -1, 1, 2]
end
