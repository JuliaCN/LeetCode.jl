@testset "1090.largest-values-from-labels.jl" begin
    @test largest_vals_from_labels([5, 4, 3, 2, 1], [1, 1, 2, 2, 3], 3, 1) == 9
    @test largest_vals_from_labels([5, 4, 3, 2, 1], [1, 3, 3, 3, 2], 3, 2) == 12
    @test largest_vals_from_labels([9, 8, 8, 7, 6], [0, 0, 0, 1, 1], 3, 1) == 16
    @test largest_vals_from_labels([9, 8, 8, 7, 6], [0, 0, 0, 1, 1], 3, 2) == 24
end
