@testset "413.arithmetic-slices.jl" begin
    @test number_of_arithmetic_slices([1, 2, 3, 4]) == 3
    @test number_of_arithmetic_slices([1, 3, 5, 7, 9, 15, 20, 25, 28, 29]) == 7
end