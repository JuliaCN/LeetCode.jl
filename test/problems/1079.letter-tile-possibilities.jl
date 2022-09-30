@testset "1079.letter-tile-possibilities.jl" begin
    @test letter_tile_possibilities("AAB") == 8
    @test letter_tile_possibilities("AAABBC") == 188
    @test letter_tile_possibilities("V") == 1
end
