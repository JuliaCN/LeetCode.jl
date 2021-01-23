@testset "1317.convert-integer-to-the-sum-of-two-no-zero-integers.jl" begin
    @test get_no_zero_integers(1010) == [11, 999]
    @test get_no_zero_integers(10000) == [1, 9999]
end
