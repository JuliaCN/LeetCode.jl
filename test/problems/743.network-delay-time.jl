@testset "743.network-delay-time.jl" begin
    @test network_delay_time([[2,1,1],[2,3,1],[3,4,1]], 4, 2) == 2
    @test network_delay_time([[1,2,1]], 2, 1) == 1
    @test network_delay_time([[1,2,1]], 2, 2) == -1
end