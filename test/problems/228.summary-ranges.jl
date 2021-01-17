@testset "228.summary-ranges.jl" begin
    @test summary_ranges([0,2,3,4,6,8,9]) == ["0","2->4","6","8->9"]
    @test summary_ranges([0,1,2,4,5,7]) == ["0->2","4->5","7"]
    @test summary_ranges(Int[]) == String[]
    @test summary_ranges([-1]) == ["-1"]
end
