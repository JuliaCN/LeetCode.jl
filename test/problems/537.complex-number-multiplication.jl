@testset "537.complex-number-multiplication.jl" begin
    @test complex_number_multiply("1+1i", "1+1i") == "0+2i"
    @test complex_number_multiply("1+-1i", "1+-1i") == "0+-2i"
end