@testset "46.permutations.jl" begin
    @test permutation([1, 2, 3]) ==
        [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    @test permutation([0, 1]) == [[0, 1], [1, 0]]
    @test permutation([1]) == [[1]]
end
