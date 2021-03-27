@testset "1603.design-parking-system.jl" begin
    parking = ParkingSystem(1, 1, 0)
    @test add_car(parking, 1) == true
    @test add_car(parking, 2) == true
    @test add_car(parking, 3) == false
    @test add_car(parking, 1) == false
end
