@testset "1220.count-vowels-permutation.jl" begin
    @test count_vowel_permutation(1) == 5
    @test count_vowel_permutation(2) == 10
    @test count_vowel_permutation(5) == 68
    @test count_vowel_permutation(10^4) == 76428576
end
