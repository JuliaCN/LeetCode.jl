@testset "12.integer-to-roman.jl" begin
    @test all(roman_to_integer(int_to_roman(i)) == i for i in 1:3999)
end
