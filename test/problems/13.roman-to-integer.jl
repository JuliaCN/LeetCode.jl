@testset "13.roman-to-integer.jl" begin
    @test roman_to_integer("III") == 3
    @test roman_to_integer("IV") == 4
    @test roman_to_integer("IX") == 9
    @test roman_to_integer("LVIII") == 58
    @test roman_to_integer("MCMXCIV") == 1994
end
