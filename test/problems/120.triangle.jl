@testset "120.triangle.jl" begin
    @test minimum_total([[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]) == 11
    @test minimum_total([[0]]) == 0
end
