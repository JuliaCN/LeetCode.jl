@testset "852.peak-index-in-a-mountain-array.jl" begin
    @test peak_index_in_mountain_array([1, 2, 1]) == 2
    @test peak_index_in_mountain_array([1, 2, 3, 1]) == 3
    @test peak_index_in_mountain_array([1, 3, 2, 1]) == 2
end