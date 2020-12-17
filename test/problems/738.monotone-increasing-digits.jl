@testset "738.monotone-increasing-digits.jl" begin
    @test monotone_increasing_digits(10) == 9
    @test monotone_increasing_digits(332) == 299
    @test monotone_increasing_digits(1234) == 1234
    @test monotone_increasing_digits(1234321) == 1233999
    @test monotone_increasing_digits(2333332) == 2299999
end
