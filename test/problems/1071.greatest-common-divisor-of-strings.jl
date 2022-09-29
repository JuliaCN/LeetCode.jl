@testset "1071.greatest-common-divisor-of-strings.jl" begin
    @test gcd_of_strings("ABCABC", "ABC") == "ABC"
    @test gcd_of_strings("ABABAB", "ABAB") == "AB"
    @test gcd_of_strings("LEET", "CODE") == ""
    @test gcd_of_strings("ABCDEF", "ABC") == ""
end
