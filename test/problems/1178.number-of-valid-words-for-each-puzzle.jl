@testset "1178.number-of-valid-words-for-each-puzzle.jl" begin
    @test find_num_of_valid_words(
        ["aaaa", "asas", "able", "ability", "actt", "actor", "access"],
        ["aboveyz", "abrodyz", "abslute", "absoryz", "actresz", "gaswxyz"],
    ) == [1, 1, 3, 2, 4, 0]
    @test find_num_of_valid_words(
        ["apple", "pleas", "please"],
        ["aelwxyz", "aelpxyz", "aelpsxy", "saelpxy", "xaelpsy"],
    ) == [0, 1, 3, 2, 0]
end
