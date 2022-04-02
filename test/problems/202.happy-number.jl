@testset "202.happy-number.jl" begin
    @test all(ishappy(i) for i in (1, 7, 10, 13, 19, 23, 28, 31, 123456))
    @test !any(ishappy(i) for i in 2:6)
    @test !any(ishappy(i) for i in (8, 9, 11, 12, 12345))
end
