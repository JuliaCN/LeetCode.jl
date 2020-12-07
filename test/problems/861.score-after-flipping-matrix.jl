@testset "861.score-after-flipping-matrix.jl" begin
    @test matrix_score([[0,0,1,1],[1,0,1,0],[1,1,0,0]]) == 39
end
