@testset "1414.find-the-minimum-number-of-fibonacci-numbers-whose-sum-is-k.jl" begin
    @test find_min_fibonacci_numbers(7) == 2
    @test find_min_fibonacci_numbers(10) == 2
    @test find_min_fibonacci_numbers(19) == 3
    for (x, y) in zip([557, 832, 846, 931, 896], [4, 5, 3, 7, 6])
        @test find_min_fibonacci_numbers(x) == y
    end
end
