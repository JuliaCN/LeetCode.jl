@testset "1108.defanging-an-ip-address.jl" begin
    @test defanging_ip_address("1.1.1.1") == "1[.]1[.]1[.]1"
    @test defanging_ip_address("255.100.50.0") == "255[.]100[.]50[.]0"
end
