@testset "462.minimum-moves-to-equal-array-elements-ii.jl" begin
    @test min_moves2([-9, -17, -18, 12, -22, 3, -23, -15, 27, 23, 14, -16, 7, -7, -24, 22, -6, -10, -6, 2, -19, 18, 7, 16, 12, 9, -28, -25, 2, 4, 27, -19, -3, 21, 10, 14, -8, -11, 14, -17, -7, -22, -3, -25, 18, -29, -24, -13, 3, -4]) == 695
    @test min_moves2([1, 2, 3]) == 2
end