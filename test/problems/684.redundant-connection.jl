@testset "684.redundant-connection.jl" begin
    @test findRedundantConnection([[3,4],[1,2],[2,4],[3,5],[2,5]]) == [2, 5]
    @test findRedundantConnection([[1,2], [1,3], [2,3]]) == [2, 3]
    @test findRedundantConnection([[1,2], [2,3], [3,4], [1,4], [1,5]]) == [1, 4]
end
