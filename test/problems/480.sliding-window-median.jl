@testset "480.sliding-window-median.jl" begin
    @test median_sliding_window([1,3,-1,-3,5,3,6,7], 3) == [1,-1,-1,3,5,6.]
end