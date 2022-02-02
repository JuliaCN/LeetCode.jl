@testset "1345.jump-game-iv.jl" begin
    @test min_jumps_1345([100, -23, -23, 404, 100, 23, 23, 23, 3, 404]) == 3
    @test min_jumps_1345([7, 6, 9, 6, 9, 6, 9, 7]) == 1
    @test min_jumps_1345([7]) == 0
    @test min_jumps_1345([6, 1, 9]) == 2
    @test min_jumps_1345([11, 22, 7, 7, 7, 7, 7, 7, 7, 22, 13]) == 3
end
