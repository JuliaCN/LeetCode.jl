@testset "435.non-overlapping-intervals.jl" begin
    @test erase_overlap_intervals([(1, 2), (2, 3), (3, 4), (1, 3)]) == 1
    @test erase_overlap_intervals([(1, 2), (1, 2), (1, 2)]) == 2
    @test erase_overlap_intervals([(1, 2), (2, 3)]) == 0
    @test erase_overlap_intervals(Tuple{Int, Int}[]) == 0
end
