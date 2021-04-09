@testset "80.remove-duplicates-from-sorted-array-ii.jl" begin
    nums1 = [1, 1, 1, 2, 2, 3]
    @test remove_duplicates2!(nums1) == 5 && nums1[1: 5] == [1, 1, 2, 2, 3]
    nums2 = [0, 0, 1, 1, 1, 1, 2, 3, 3]
    @test remove_duplicates2!(nums2) == 7 && nums2[1: 7] == [0, 0, 1, 1, 2, 3, 3]
end
