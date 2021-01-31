@testset "1017.convert-to-base-2.jl" begin
    @test base_neg2(3) == "111"
    @test base_neg2(2) == "110"
    @test base_neg2(4) == "100"
    @test base_neg2(12524) == "111000100111100"
end