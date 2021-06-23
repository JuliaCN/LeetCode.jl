@testset "807.max-increase-to-keep-city-skyline.jl" begin
    @test max_increase_keeping_skyline(hcat([[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]...)) == 35
end
