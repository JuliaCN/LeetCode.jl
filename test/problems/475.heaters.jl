@testset "475.heaters.jl" begin
    @test find_radius([1, 2, 3], [2]) == 1
    @test find_radius([1, 2, 3, 4], [1, 4]) == 1
    @test find_radius([1, 5], [2]) == 3
end
