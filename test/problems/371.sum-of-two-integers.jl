@testset "371.sum-of-two-integers.jl" begin
    @test get_sum371(1, -1) == 0
    @test get_sum371(20, 23) == 43
end
