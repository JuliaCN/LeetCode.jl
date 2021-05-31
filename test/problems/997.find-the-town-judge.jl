@testset "997.find-the-town-judge.jl" begin
    @test find_judge(3, [[1,3],[2,3]]) == 3
    @test find_judge(3, [[1,3],[2,3],[3,1]]) == -1
    @test find_judge(3, [[1,2],[2,3]]) == -1 
    @test find_judge(4, [[1,3],[1,4],[2,3],[2,4],[4,3]]) == 3
end