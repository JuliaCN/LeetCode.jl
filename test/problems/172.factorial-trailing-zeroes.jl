@testset "172.factorial-trailing-zeroes.jl" begin
    @test all(trailing_zeroes(i) == 0 for i in 0:4)
    @test trailing_zeroes(5) == 1
    @test trailing_zeroes(1999) == 496
    @test trailing_zeroes(2000) == trailing_zeroes(2001) == 499
end
