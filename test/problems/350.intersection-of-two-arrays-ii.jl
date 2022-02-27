@testset "350.intersection-of-two-arrays-ii.jl" begin
    @test intersection_of_arrays([1, 2, 2, 1], [2, 2]) == [2, 2]
    @test intersection_of_arrays([4, 9, 5], [9, 4, 9, 8, 4]) == [4, 9]
    @test intersection_of_arrays([2], [1]) == Int[]
    @test intersection_of_arrays([2], [2]) == [2]
end
