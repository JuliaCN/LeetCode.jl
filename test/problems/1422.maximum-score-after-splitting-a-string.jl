@testset "1422.maximum-score-after-splitting-a-string.jl" begin
    @test max_score("011101") == 5
    @test max_score("00111") == 5
    @test max_score("1111") == 3
    @test max_score("0000") == 3
end
