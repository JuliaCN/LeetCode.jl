@testset "910.smallest-range-ii.jl" begin
    @test smallest_rangeII([1], 0) == 0
    @test smallest_rangeII([0, 10], 2) == 6
    @test smallest_rangeII([1, 3, 6], 3) == 3
    @test smallest_rangeII([1, 1, 3, 4, 10, 12, 13, 14, 26, 27, 28, 42, 42, 48, 50, 50, 53, 58, 60, 61, 63, 66, 72, 73, 75, 75, 80, 86, 90, 93], 48) == 82 
end