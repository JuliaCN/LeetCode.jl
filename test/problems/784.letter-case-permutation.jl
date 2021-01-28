@testset "784.letter-case-permutation.jl" begin
    @test letter_case_permutation("a1b2") == ["a1b2", "A1b2", "a1B2", "A1B2"]
    @test letter_case_permutation("3z4") == ["3z4", "3Z4"]
    @test letter_case_permutation("12345") == ["12345"]
end