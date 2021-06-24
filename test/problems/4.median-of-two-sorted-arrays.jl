@testset "4.median-of-two-sorted-arrays.jl" begin
    @test find_median_sorted_arrays([1, 3], [2]) == 2.0
    @test find_median_sorted_arrays([1, 2], [3, 4]) == 2.5
    for _ in 1:40
        nums1 = rand(1:200, 50) |> sort!
        nums2 = rand(1:200, 49) |> sort!
        tt = [nums1; nums2] |> sort!
        @test find_median_sorted_arrays(nums1, nums2) == tt[50]
    end
end