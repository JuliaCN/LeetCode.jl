@testset "1014.best-sightseeing-pair.jl" begin
    @test max_score_sightseeing_pair([8, 1, 5, 2, 6]) == 11
    @test max_score_sightseeing_pair([24, 9, 13, 15, 8, 4, 19, 30, 8, 3, 18, 30, 14, 15, 8,
                                      12, 11, 14, 7, 20, 28, 4, 11, 7, 8, 2, 1, 7, 2, 3]) == 56
end