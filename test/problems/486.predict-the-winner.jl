@testset "486.predict-the-winner.jl" begin
    @test valid_ip_address("172.16.254.1") == "IPv4"
    @test valid_ip_address("2001:0db8:85a3:0:0:8A2E:0370:7334") == "IPv6"
    @test valid_ip_address("85a3.16.254.1") == "Neither"
    @test valid_ip_address("256.256.256.256") == "Neither"
    @test valid_ip_address("20EE:FGb8:85a3:0:0:8A2E:0370:7334") == "Neither"
end
