@testset "436.find-right-interval.jl" begin
    @test find_right_interval([(1, 2)]) == [-1]
    @test find_right_interval([(3, 4), (2, 3), (1, 2)]) == [-1, 1, 2]
    @test find_right_interval([(1, 4), (2, 3), (3, 4)]) == [-1, 3, -1]
end
