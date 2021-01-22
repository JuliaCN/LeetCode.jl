@testset "" begin
    @test min_operations1558([1, 5]) == 5
    @test min_operations1558([2,2]) == 3
    @test min_operations1558([4,2,5]) == 6
    @test min_operations1558([3,2,2,4]) == 7
    @test min_operations1558([2,4,8,16]) == 8
end