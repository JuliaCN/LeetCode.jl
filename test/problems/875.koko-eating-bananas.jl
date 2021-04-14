@testset "875.koko-eating-bananas.jl" begin
    @test min_eating_speed([3,6,7,11], 8) == 4
    @test min_eating_speed([30,11,23,4,20], 5) == 30
    @test min_eating_speed([30,11,23,4,20], 6) == 23
end
