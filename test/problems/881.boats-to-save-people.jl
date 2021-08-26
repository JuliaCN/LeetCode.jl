@testset "881.boats-to-save-people.jl" begin
    @test num_rescue_boats([1,2], 3) == 1
    @test num_rescue_boats([3,2,2,1], 3) == 3
    @test num_rescue_boats([3,5,3,4], 5) == 4
end
