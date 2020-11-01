@testset "4.median-of-two-sorted-arrays.jl" begin
    @test find_median_sorted_arrays([1, 3], [2]) == 2.0
    @test find_median_sorted_arrays([1, 2], [3, 4]) == 2.5
end
