@testset "1023.camelcase-matching.jl" begin
    @test camelMatch(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"],"FB") == [true,false,true,true,false]
    @test camelMatch(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"],"FoBa") == [true,false,true,false,false]
    @test camelMatch(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"],"FoBaT") == [false,true,false,false,false]
end
