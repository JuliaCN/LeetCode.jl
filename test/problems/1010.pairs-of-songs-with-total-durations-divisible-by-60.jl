@testset "1010.pairs-of-songs-with-total-durations-divisible-by-60.jl" begin
    @test num_pairs_divisible_by60([30, 20, 150, 100, 40]) == 3
    @test num_pairs_divisible_by60([60, 60, 60]) == 3
    @test num_pairs_divisible_by60([245, 55, 195, 220, 208, 97, 28, 48, 260, 295, 114, 160,
                                    26, 18, 66, 48, 300, 69, 180, 102, 120, 81, 116, 205,
                                    141, 157, 35, 85, 146, 59, 241, 45, 106, 100, 24, 55,
                                    61, 195, 255, 66, 139, 192, 94, 177, 64, 249, 205, 77,
                                    79, 197]) == 25
end