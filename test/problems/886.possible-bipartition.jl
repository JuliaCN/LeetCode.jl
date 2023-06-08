@testset "886.possible-bipartition.jl" begin
    @test possible_bipartition(4, [[1, 2], [1, 3], [2, 4]])
    @test !possible_bipartition(3, [[1, 2], [1, 3], [2, 3]])
    @test !possible_bipartition(5, [[1, 2], [2, 3], [3, 4], [4, 5], [1, 5]])
end
