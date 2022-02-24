@testset "1189.maximum-number-of-balloons.jl" begin
    @test max_num_of_ballons("nlaebolko") == 1
    @test max_num_of_ballons("loonbalxballpoon") == 2
    @test max_num_of_ballons("leetcode") == 0
    @test max_num_of_ballons("balloonnnbaloo") == 1
end
