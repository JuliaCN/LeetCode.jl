@testset "1007.minimum-domino-rotations-for-equal-row.jl" begin
    @test min_domino_rotations([2,1,2,4,2,2], [5,2,6,2,3,2]) == 2
    @test min_domino_rotations([5,2,6,2,3,2], [2,1,2,4,2,2]) == 2
    @test min_domino_rotations([3,5,1,2,3], [3,6,3,3,4]) == -1
end