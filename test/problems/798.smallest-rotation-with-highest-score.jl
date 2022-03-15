@testset "798.smallest-rotation-with-highest-score.jl" begin
    @test best_rotation([2, 3, 1, 4, 0]) == 3
    @test best_rotation([1, 3, 0, 2, 4]) == 0
end
