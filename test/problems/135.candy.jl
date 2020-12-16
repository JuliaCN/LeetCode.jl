@testset "135.candy.jl" begin
    @test candy([1, 0, 2]) == 5
    @test candy([1, 2, 2]) == 4
end
