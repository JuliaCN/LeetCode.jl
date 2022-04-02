@testset "17.letter-combinations-of-a-phone-number.jl" begin
    @test letter_combinations("23") ==
        ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    @test isempty(letter_combinations(""))
    @test letter_combinations("8") == ["t", "u", "v"]
end
