@testset "1015.smallest-integer-divisible-by-k.jl" begin
    @test smallest_repunit_div_by_k(787) == 393
    @test smallest_repunit_div_by_k(77) == 6
    @test smallest_repunit_div_by_k(7) == 6
    @test smallest_repunit_div_by_k(541) == 540
    @test smallest_repunit_div_by_k(547) == 91
end