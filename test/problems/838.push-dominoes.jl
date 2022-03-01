@testset "838.push-dominoes.jl" begin
    @test push_dominoes("RR.L") == "RR.L"
    @test push_dominoes(".L.R...LR..L..") == "LL.RR.LLRRLL.."
    @test push_dominoes(".L.R.") == "LL.RR"
end
