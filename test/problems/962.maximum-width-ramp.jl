@testset "962.maximum-width-ramp.jl" begin
    @test max_width_ramp([41, 19, 31, 50, 7, 13, 43, 3, 4, 32, 16, 11, 38, 31, 27, 32, 29, 21, 2, 45, 42, 34, 17, 1, 16, 45, 48, 33, 19]) == 27
    @test max_width_ramp([6,0,8,2,1,5]) == 4
    @test max_width_ramp([9,8,1,0,1,9,4,0,4,1]) == 7
end