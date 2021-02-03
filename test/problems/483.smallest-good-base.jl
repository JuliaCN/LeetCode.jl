@testset "483.smallest-good-base.jl" begin
    @test smallest_good_base(13) == 3
    @test smallest_good_base(4681) == 8
    @test smallest_good_base(1000000000000000000) == 999999999999999999
end