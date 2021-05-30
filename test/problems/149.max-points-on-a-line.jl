@testset "149.max-points-on-a-line.jl" begin
    @test max_points([[1, 1], [3, 2], [5, 3], [4, 1], [2, 3], [1, 4]]) == 4
    @test max_points([[1, 1], [2, 2], [3, 3]]) == 3
    @test max_points([[0, 0], [94911150, 94911151], [94911151, 94911152]]) == 2
    @test max_points(Vector{Int}[]) == 0
end
