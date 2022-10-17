@testset "904.fruit-into-baskets.jl" begin
    @test total_fruit([1,2,1]) == 3
    @test total_fruit([0,1,2,2]) == 3
    @test total_fruit([1,2,3,2,2]) == 4
    @test total_fruit([3,3,3,1,2,1,1,2,3,3,4]) == 5
end
