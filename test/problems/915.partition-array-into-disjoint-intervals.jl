@testset "915.partition-array-into-disjoint-intervals.jl" begin
    @test partition_disjoint([5, 0, 3, 8, 6]) == 3
    @test partition_disjoint([1, 1, 1, 0, 6, 12]) == 4
    @test partition_disjoint([20, 34, 34, 17, 11, 31, 20, 10, 28, 31, 10, 
        19, 9, 16, 23, 10, 38, 6, 40, 4, 38, 33, 40, 27, 48, 41, 48, 46, 44, 50]) == 24
end
