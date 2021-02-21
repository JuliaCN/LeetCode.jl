@testset "1438.longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit.jl" begin
    @test longest_subarray([10,1,2,4,7,2], 5) == 4
    @test longest_subarray([4,2,2,2,4,4,2,2], 0) == 3
end