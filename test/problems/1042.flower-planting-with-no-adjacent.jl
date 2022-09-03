@testset "1042.flower-planting-with-no-adjacent.jl" begin
    @test garden_no_adj(3, [[1, 2], [2, 3], [3, 1]]) == [1, 2, 3]
    @test garden_no_adj(4, [[1, 2], [3, 4]]) == [1, 2, 1, 2]
    @test garden_no_adj(4, [[1, 2], [2, 3], [3, 4], [4, 1], [1, 3], [2, 4]]) == [1, 2, 3, 4]
end
