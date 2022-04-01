@testset "162.find-peak-element.jl" begin
    @test find_peak_element([1, 2, 3, 1]) == 2
    @test find_peak_element([1, 2, 1, 3, 5, 6, 4]) in (1, 5)
    @test find_peak_element([1]) == 0
    @test find_peak_element([3, 2, 1]) == 0
end
