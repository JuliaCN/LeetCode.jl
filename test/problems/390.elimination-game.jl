@testset "390.elimination-game.jl" begin
    for (i, j) in
        zip([9, 246, 12, 634, 24, 32, 357, 4734], [6, 120, 6, 384, 14, 22, 118, 1920])
        @test last_remaining(i) == j
    end
end