@testset "1122.relative-sort-array.jl" begin
    @test relative_sort_array([2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19], [2, 1, 4, 3, 9, 6]) ==
          [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 19]
    @test relative_sort_array([2, 3, 1, 3, 2, 8, 4, 6, 7, 9, 2, 19], [2, 1, 4, 3, 9, 6]) ==
          [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 8, 19]
end
