@testset "38.count-and-say.jl" begin
    @test countandsay(1) == "1"
    @test countandsay(4) == "1211"
    @test countandsay(5) == "111221"
    @test countandsay(6) == "312211"
end
