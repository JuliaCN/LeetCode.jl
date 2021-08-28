@testset "1480.running-sum-of-1d-array.jl" begin
    @test running_sum([1,2,3,4]) == [1,3,6,10]
    @test running_sum([1,1,1,1,1]) == [1,2,3,4,5]
    @test running_sum([3,1,2,10,1]) == [3,4,6,16,17]
end
