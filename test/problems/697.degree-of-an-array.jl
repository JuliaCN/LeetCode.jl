@testset "697.degree-of-an-array.jl" begin
    @test find_shortest_sub_array([1, 2, 2, 3, 1]) == 2
    @test find_shortest_sub_array([1, 2, 2, 3, 1, 4, 2]) == 6
end