@testset "581.shortest-unsorted-continuous-subarray.jl" begin
    @test find_unsorted_subarray([2, 6, 4, 8, 10, 9, 15]) == 5
    @test find_unsorted_subarray([1, 2, 3, 4]) == 0
    @test find_unsorted_subarray([1]) == 0
    @test find_unsorted_subarray([18, 17, 1, 12, 10, 9, 19, 2, 11, 28, 7, 21, 8, 3, 27, 30,
                                  0, 14, 26, 4, 15, 29, 6, 16, 20, 24, 23, 5, 13, 25, 22]) ==
          31
end
