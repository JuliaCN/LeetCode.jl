@testset "1031.maximum-sum-of-two-non-overlapping-subarrays.jl" begin
    @test window_sum([0,6,5,2,2,5,1,9,4], 2) == [6, 11, 7, 4, 7, 6, 10, 13, 0]
    @test window_sum([0,6,5,2,2,5,1,9,4], 3) == [11, 13, 9, 9, 8, 15, 14, 0, 0]
    @test max_win_sum([0,6,5,2,2,5,1,9,4], 3) == [15, 15, 15, 15, 15, 15, 14, 0, 0]
    @test max_sum_two_no_overlap([0,6,5,2,2,5,1,9,4], 1, 2) == 20
    @test max_sum_two_no_overlap([3,8,1,3,2,1,8,9,0], 3, 2) == 29
    @test max_sum_two_no_overlap([2,1,5,6,0,9,5,0,3,8], 4, 3) == 31
end
