@testset "1523.count-odd-numbers-in-an-interval-range.jl" begin
    @test count_odd_numbers(3, 7) == count_odd_numbers(3, 8) == 3
    @test count_odd_numbers(2, 7) == 3
    @test count_odd_numbers(0, 10^9) == 5 * 10^8
end
