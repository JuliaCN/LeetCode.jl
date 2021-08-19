@testset "56.merge-intervals.jl" begin
    @test merge_intervals([[1,3],[2,6],[8,10],[15,18]]) == [[1,6],[8,10],[15,18]]
    @test merge_intervals([[1,4],[4,5]]) == [[1,5]]
end
