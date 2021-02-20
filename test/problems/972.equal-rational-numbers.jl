@testset "972.equal-rational-numbers.jl" begin
    @test is_rational_equal("0.(52)", "0.5(25)") == true
    @test is_rational_equal("0.1666(6)", "0.166(66)") == true
    @test is_rational_equal("0.9(9)", "1.") == true
end