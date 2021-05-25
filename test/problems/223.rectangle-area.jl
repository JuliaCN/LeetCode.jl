@testset "216.combination-sum-iii.jl" begin
    @test compute_area([-3, 0, 3, 4, 0, -1, 9, 2]) == 45
    @test compute_area([0, -1, 9, 2, -3, 0, 3, 4]) == 45
    @test compute_area([-2, -2, 2, 2, -2, -2, 2, 2]) == 16
    @test compute_area([-2, -2, 2, 2, 2, 2, 4, 4]) == 0
end
