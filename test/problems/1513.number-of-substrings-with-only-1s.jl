@testset "1513.number-of-substrings-with-only-1s.jl" begin
    @test num_sub("0110111") == 9
    @test num_sub("101") == 2
    @test num_sub("111111") == 21
    @test num_sub("000") == 0
end
