@testset "1023.camelcase-matching.jl" begin
    @test camelMatch(("FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"),"FB") == ("1,0,1,1,0")
    @test camelMatch(("FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"),"FoBa") == ("1,0,1,0,0")
    @test camelMatch(("FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"),"FoBaT") == ("0,1,0,0,0")
end
