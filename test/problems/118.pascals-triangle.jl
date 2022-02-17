@testset "118.pascals-triangle.jl" begin
    @test pascals_triangle(1) == [[1]]
    @test pascals_triangle(2) == [[1], [1, 1]]
    @test pascals_triangle(5) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
end
