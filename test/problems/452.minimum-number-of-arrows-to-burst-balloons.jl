@testset "452.minimum-number-of-arrows-to-burst-balloons.jl" begin
    @test find_min_arrow_shots([[10, 16], [2, 8], [1, 6], [7, 12]]) == 2
    @test find_min_arrow_shots([[1, 2], [3, 4], [5, 6], [7, 8]]) == 4
    @test find_min_arrow_shots([[1, 2], [2, 3], [3, 4], [4, 5]]) == 2
    @test find_min_arrow_shots([[2, 3], [2, 3]]) == 1
    @test find_min_arrow_shots([[1, 2]]) == 1
    @test find_min_arrow_shots(Vector{Int}[]) == 0
end
