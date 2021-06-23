@testset "539.minimum-time-difference.jl" begin
    @test find_min_difference(["23:59", "00:00"]) == 1
    @test find_min_difference(["00:00", "23:59", "00:00"]) == 0
end
