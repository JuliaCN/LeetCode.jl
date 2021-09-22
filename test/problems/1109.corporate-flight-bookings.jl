@testset "1109.corporate-flight-bookings.jl" begin
    @test corp_flight_bookings([[1, 2, 10], [2, 3, 20], [2, 5, 25]], 5) ==
          [10, 55, 45, 25, 25]
    @test corp_flight_bookings([[1, 2, 10], [2, 2, 15]], 2) == [10, 25]
end
