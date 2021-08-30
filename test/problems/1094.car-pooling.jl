@testset "1094.car-pooling.jl" begin
    @test car_pooling([[2,1,5],[3,3,7]], 4) == false
    @test car_pooling([[2,1,5],[3,3,7]], 5) == true
    @test car_pooling([[2,1,5],[3,5,7]], 3) == true
    @test car_pooling([[3,2,7],[3,7,9],[8,3,9]], 11) == true
end
