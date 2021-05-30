@testset "88.merge-sorted-array.jl" begin
    nums1 = [1, 2, 3, 0, 0, 0]
    m = 3
    nums2 = [2, 5, 6]
    n = 3

    merge_sorted_array(nums1, m, nums2, n)
    @test nums1 == [1, 2, 2, 3, 5, 6]

    nums2 = [0, 0, 1]
    n = 3
    merge_sorted_array(nums1, m, nums2, n)
    @test nums1 == [0, 0, 1, 1, 2, 2]
end
