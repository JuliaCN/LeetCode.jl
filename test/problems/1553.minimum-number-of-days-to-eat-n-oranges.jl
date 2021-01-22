@testset "" begin
    @test min_days_1553(159832501) == 28
    @test min_days_1553(82129117) == 28
    @test min_days_1153(1) == 1
    @test min_days_1153(6) == 3
    @test min_days_1153(10) == 4
end