@testset "954.array-of-doubled-pairs.jl" begin
    @test can_reorder_doubled([3, 1, 3, 6]) == false
    @test can_reorder_doubled([2, 1, 2, 6]) == false
    @test can_reorder_doubled([4, -2, 2, -4]) == true
    @test can_reorder_doubled([1, 2, 3, 16, 8, 4]) == false
end
