@testset "1562.find-latest-group-of-size-m.jl" begin
    @test find_latest_step([3,5,1,2,4], 1) == 4
    @test find_latest_step([3,5,1,2,4], 2) == -1
    @test find_latest_step([1], 1) == 1
    @test find_latest_step([2, 1], 2) == 2
end