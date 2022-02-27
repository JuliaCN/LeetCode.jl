@testset "34.find-first-and-last-position-of-element-in-sorted-array.jl" begin
    @test search_range([5, 7, 7, 8, 8, 10], 8) == [3, 4]
    @test search_range([5, 7, 7, 8, 8, 10], 6) == [-1, -1]
    @test search_range(Int[], 0) == [-1, -1]
    @test search_range([1, 1, 1, 2, 3, 3, 4, 4], 1) == [0, 2]
end
