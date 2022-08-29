@testset "33.search-in-rotated-sorted-array.jl" begin
    @test search_in_rotated_array([4, 5, 6, 7, 0, 1, 2], 0) == 4
    @test search_in_rotated_array([4, 5, 6, 7, 0, 1, 2], 2) == 6
    @test search_in_rotated_array([4, 5, 6, 7, 0, 1, 2], 3) == -1
    @test search_in_rotated_array([1], 0) == -1
end
