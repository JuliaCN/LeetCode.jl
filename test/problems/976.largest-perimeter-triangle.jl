@testset "976.largest-perimeter-triangle.jl" begin
    @test largest_perimeter([2, 1, 2]) == 5
    @test largest_perimeter([1, 2, 1]) == 0
    @test largest_perimeter([3, 2, 3, 4]) == 10
    @test largest_perimeter([3, 6, 2, 3]) == 8
end