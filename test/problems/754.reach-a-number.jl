@testset "754.reach-a-number.jl" begin
    @test reach_number(3) == 2
    @test reach_number(2) == 3
end