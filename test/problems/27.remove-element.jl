@testset "27.remove-element.jl" begin
    nums1 = [3, 2, 2, 3]
    nums2 = [0, 1, 2, 2, 3, 0, 4, 2]
    nums3 = [1, 2, 3, 4]
    @test remove_element!(nums1, 3) == 2 && nums1 == [2, 2]
    @test remove_element!(nums2, 2) == 5 && nums2 == [0, 1, 3, 0, 4]
    @test remove_element!(nums3, 0) == 4 && nums3 == [1, 2, 3, 4]
end
