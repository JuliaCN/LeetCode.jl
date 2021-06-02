@testset "91.decode-ways.jl" begin
    @test num_decodings("12") == 2
    @test num_decodings("226") == 3
    @test num_decodings("0") == 0
    @test num_decodings("06") == 0 
end