@testset "592.fraction-addition-and-subtraction.jl" begin
    @test fraction_addition("-1/2+1/2") == "0/1"
    @test fraction_addition("-1/2+1/2+1/3") == "1/3"
    @test fraction_addition("1/3-1/2") == "-1/6"
    @test fraction_addition("5/3+1/3") == "2/1"
end