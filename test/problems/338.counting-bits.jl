@testset "338.counting-bits.jl" begin
    @test count_bits(40) ==
          [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3,
           4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2]
end