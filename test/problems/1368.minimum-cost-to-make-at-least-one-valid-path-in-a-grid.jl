@testset "1368.minimum-cost-to-make-at-least-one-valid-path-in-a-grid.jl" begin
    @test min_cost1368(hcat([[1, 1, 3], [3, 2, 2], [1, 1, 4]]...)) == 0
    @test min_cost1368(hcat([[1, 1, 1, 1], [2, 2, 2, 2], [1, 1, 1, 1], [2, 2, 2, 2]]...)) ==
          3
    @test min_cost1368(hcat([[1,2],[4,3]]...)) == 1
    @test min_cost1368(hcat([[2,2,2],[2,2,2]]... )) == 3
    @test min_cost1368(hcat([[4]]...)) == 0
end