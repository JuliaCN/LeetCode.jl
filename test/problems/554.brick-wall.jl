@testset "554.brick-wall.jl" begin
<<<<<<< HEAD
    @test least_bricks( [[1,2,2,1],[3,1,2],[1,3,2],[2,4],[3,1,2],[1,3,1,1]]) == 2
    @test least_bricks([[1],[1],[1]]) == 3 
end
=======
    @test least_bricks([
        [1, 2, 2, 1], [3, 1, 2], [1, 3, 2], [2, 4], [3, 1, 2], [1, 3, 1, 1]
    ]) == 2
    @test least_bricks([[1], [1], [1]]) == 3
end
>>>>>>> upstream/master
