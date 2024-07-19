@testset "47.permutations-ii.jl" begin
    @test permutationII([1, 1, 2]) == [[1, 1, 2], [1, 2, 1], [2, 1, 1]]
    @test permutationII([1, 2, 3]) ==
        [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
end
