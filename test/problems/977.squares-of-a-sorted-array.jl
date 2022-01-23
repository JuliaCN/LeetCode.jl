@testset "977.squares-of-a-sorted-array.jl" begin
    @test squares_of_a_sorted_array([-4, -1, 0, 3, 10]) == [0, 1, 9, 16, 100]
    @test squares_of_a_sorted_array([-7, -3, 2, 3, 11]) == [4, 9, 9, 49, 121]
end
