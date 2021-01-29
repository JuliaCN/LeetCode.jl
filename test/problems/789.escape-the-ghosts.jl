@testset "789.escape-the-ghosts.jl" begin
    @test escape_ghosts([[1,0],[0,3]], [0, 1]) == true
    @test escape_ghosts([[1,0]], [2,0]) == false
    @test escape_ghosts([[2,0]], [1,0]) == false
    @test escape_ghosts([[5,0],[-10,-2],[0,-5],[-2,-2],[-7,1]], [7, 7]) == false
    @test escape_ghosts([[-1,0],[0,1],[-1,0],[0,1],[-1,0]], [0,0])
end