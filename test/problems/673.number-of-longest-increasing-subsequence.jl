@testset "673.number-of-longest-increasing-subsequence.jl" begin
    @test find_number_of_LIS([1, 3, 5, 4, 7]) == 2
    @test find_number_of_LIS([2, 2, 2, 2, 2]) == 5
    @test find_number_of_LIS([1, 29, 58, 28, 9, 53, 38, 42, 33, 58, 4, 9, 26, 45, 53, 5, 3,
                              55, 49, 58, 50, 13, 59, 22, 38, 20, 11, 58, 59, 37, 4, 43, 28,
                              20, 6, 4, 57, 39, 3, 1, 43, 13, 58, 25, 1, 27, 58, 27, 45,
                              58]) == 10
end
