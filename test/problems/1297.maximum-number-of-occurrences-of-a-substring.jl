@testset "1297.maximum-number-of-occurrences-of-a-substring.jl" begin
@test max_freq("aababcaab", 2, 3, 4) == 2
@test max_freq("aaaa", 1, 3, 3) ==  2
@test max_freq("aabcabcab", 2, 2, 3) == 3

@test max_freq("abcde", 2, 3, 3) == 0
end