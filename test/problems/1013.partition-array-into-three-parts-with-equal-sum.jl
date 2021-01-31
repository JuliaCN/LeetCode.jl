@testset "1013.partition-array-into-three-parts-with-equal-sum.jl" begin
    @test can_three_parts_equal_sum([0, 2, 1, -6, 6, 7, 9, -1, 2, 0, 1]) == false
    @test can_three_parts_equal_sum([0, 2, 1, -6, 6, -7, 9, 1, 2, 0, 1]) == true
    @test can_three_parts_equal_sum([3, 3, 6, 5, -2, 2, 5, 1, -9, 4]) == true
    @test can_three_parts_equal_sum([0, 0, 0]) == true
    @test can_three_parts_equal_sum([0, 0]) == false
end