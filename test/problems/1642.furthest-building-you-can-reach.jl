@testset "1297.maximum-number-of-occurrences-of-a-substring.jl" begin
    @test furthest_building([4, 2, 7, 6, 9, 14, 12], 5, 1) == 4
    @test furthest_building([4, 12, 2, 7, 3, 18, 20, 3, 19], 10, 2) == 7
    @test furthest_building([14, 3, 19, 3], 17, 0) == 3
end
