@testset "96.unique-binary-search-trees.jl" begin
    @test num_of_trees.(1:9) == [1, 2, 5, 14, 42, 132, 429, 1430, 4862]
end
