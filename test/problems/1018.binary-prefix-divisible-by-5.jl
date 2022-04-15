@testset "1018.binary-prefix-divisible-by-5.jl" begin
    @test prefixes_div_by5([0, 1, 1]) == [true, false, false]
    @test prefixes_div_by5([1, 1, 1]) == [false, false, false]
    @test prefixes_div_by5([0, 1, 1, 1, 1, 1]) == [true, false, false, false, true, false]
    @test prefixes_div_by5([1, 1, 1, 0, 1]) == [false, false, false, false, false]
end
