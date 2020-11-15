@testset "402.remove-k-digits.jl" begin
    @test remove_kdigits("1432219", 3) == "1219"
    @test remove_kdigits("10200", 1) == "200"
    @test remove_kdigits("10", 1) == "0"
    @test remove_kdigits("112", 1) == "11"
end
