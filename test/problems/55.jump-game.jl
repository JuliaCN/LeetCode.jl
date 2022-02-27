@testset "55.jump-game.jl" begin
    @test can_jump([2, 3, 1, 1, 4]) == true
    @test can_jump([3, 2, 1, 0, 4]) == false
    @test can_jump([3, 2, 1, 0, 4]) == false
    @test can_jump([0]) == true
    @test can_jump([5, 9, 3, 2, 1, 0, 2, 3, 3, 1, 0, 0]) == true
end
