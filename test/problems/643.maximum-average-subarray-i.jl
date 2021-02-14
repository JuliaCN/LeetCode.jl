@testset "643.maximum-average-subarray-i.jl" begin
    @test find_max_average([1, 12, -5, -6, 50, 3], 4) == 51 / 4
    @test find_max_average([13, 20, -1, -6, 28, 30, 10, -4, -10, 22, 26, -21, -1, -9, -9,
                            -27, -3, 21, -13, -4], 7) == 102 / 7
end