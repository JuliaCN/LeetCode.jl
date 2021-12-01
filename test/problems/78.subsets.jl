@testset "78.subsets.jl" begin
    @test subsets([1,2,3]) == [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
    @test subsets([0]) == [[],[0]]
end
