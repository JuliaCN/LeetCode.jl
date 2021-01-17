@testset "1232.check-if-it-is-a-straight-line.jl" begin
    @test check_straight_line([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]) == true
    @test check_straight_line([[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]) == false
end
