@testset "846.hand-of-straights.jl" begin
    @test is_n_straight_hand([1, 2, 3, 6, 2, 3, 4, 7, 8], 3) == true
    @test is_n_straight_hand([1, 2, 3, 4, 5], 4) == false
    @test is_n_straight_hand([1, 1, 2, 3], 4) == false
end
