@testset "1011.capacity-to-ship-packages-within-d-days.jl" begin
    @test ship_within_days([1,2,3,1,1], 4) == 3
    @test ship_within_days([3,2,2,4,1,4], 3) == 6
    @test ship_within_days([1,2,3,4,5,6,7,8,9,10], 5) == 15
end