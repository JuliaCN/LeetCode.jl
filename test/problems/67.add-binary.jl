using Test
@testset "67.add-binary.jl" begin
    
    @test add_binary("0", "0") == "0"
    @test add_binary("1", "1") == "10"
    @test add_binary("1010", "1011") == "10101"
    @test add_binary("110", "11") == "1001"
    @test add_binary("1111", "1111") == "11110"
    @test add_binary("0", "101") == "101"
    @test add_binary("100000", "1") == "100001"
    @test add_binary("111111", "1") == "1000000"
    @test add_binary("101010", "110110") == "1100000"
    @test add_binary("1000000000", "1000000000") == "10000000000"
    

end