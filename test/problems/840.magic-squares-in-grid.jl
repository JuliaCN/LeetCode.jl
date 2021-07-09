@testset "840.magic-squares-in-grid.jl" begin
    @test num_magic_squares_inside(hcat([[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]]...)) == 1
end
