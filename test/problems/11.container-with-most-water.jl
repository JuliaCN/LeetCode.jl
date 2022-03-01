@testset "11.container-with-most-water.jl" begin
    @test max_area_of_container([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
    @test max_area_of_container([1, 1]) == 1
end
