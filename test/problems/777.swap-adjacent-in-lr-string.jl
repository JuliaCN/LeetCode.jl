@testset "777.swap-adjacent-in-lr-string.jl" begin
    @test can_transform("RXXLRXRXL", "XRLXXRRLX") == true
    @test can_transform("XXXL", "LXXL") == false
end