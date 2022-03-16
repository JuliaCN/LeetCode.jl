@testset "233.number-of-digit-one.jl" begin
    @test count_digit_one(0) == 0
    @test all(count_digit_one(i) == 1 for i in 1:9)
    @test count_digit_one(13) == 6
    @test count_digit_one(999) == 300
    @test count_digit_one(213789199) == 274085040
    @test count_digit_one(100) == 21
end
