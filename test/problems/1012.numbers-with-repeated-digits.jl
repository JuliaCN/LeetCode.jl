@testset "1012.numbers-with-repeated-digits.jl" begin
    @test num_dup_digits_at_most_n(3562) == 1561
    @test num_dup_digits_at_most_n(20) == 1
    @test num_dup_digits_at_most_n(8315) == 3870
    @test num_dup_digits_at_most_n(1000) == 262
end