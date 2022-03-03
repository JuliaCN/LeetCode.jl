@testset "258.add-digits.jl" begin
    @test all(add_digits(i) == i for i in 0:9)
    @test add_digits(18) == 9
    @test add_digits(10) == 1
    @test add_digits(38) == 2
end
