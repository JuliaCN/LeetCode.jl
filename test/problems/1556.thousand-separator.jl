@testset "1556.thousand-separator.jl" begin
    @test thousand_separator(123456789) == "123.456.789"
    @test thousand_separator(123) == "123"
    @test thousand_separator(1234) == "1.234"
    @test thousand_separator(0) == "0"
end