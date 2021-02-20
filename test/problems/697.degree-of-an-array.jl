@testset "697.degree-of-an-array.jl" begin
    @test find_shortest_sub_array([1, 2, 2, 3, 1]) == 2
    @test find_shortest_sub_array([1,2,2,3,1,4,2]) == 6
    @test find_shortest_sub_array([1,2,2,3,1,3,4,5,2,1,2,3]) == 10
    @test find_shortest_sub_array([2,3,1,2,4,2,3,6,2,1,3,4,2,2,3,4,3]) == 14
end
