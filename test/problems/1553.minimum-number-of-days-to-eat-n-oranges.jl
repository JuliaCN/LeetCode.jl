@testset "1553.minimum-number-of-days-to-eat-n-oranges.jl" begin
    @test min_days_1553(159832501) == 28
    @test min_days_1553(82129117) == 28
    @test min_days_1553(1) == 1
    @test min_days_1553(6) == 3
    @test min_days_1553(10) == 4
end