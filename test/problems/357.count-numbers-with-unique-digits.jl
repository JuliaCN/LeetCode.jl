@testset "357.count-numbers-with-unique-digits.jl" begin
    for (i, j) in zip(2:8, [91, 739, 5275, 32491, 168571, 712891, 2345851])
        @test count_numbers_with_unique_digits(i) == j
    end
end
