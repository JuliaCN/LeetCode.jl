@testset "1318.minimum-flips-to-make-a-or-b-equal-to-c.jl" begin
    @test min_flip(2, 6, 5) == 3
    @test min_flip(4, 2, 7) == 1
    @test min_flip(1, 2, 3) == 0
end