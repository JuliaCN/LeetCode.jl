@testset "1656.design-an-ordered-stream.jl" begin
    stream = OrderStream(5)
    @test insertdata!(stream, 3, "ccccc") == String[]
    @test insertdata!(stream, 1, "aaaaa") == ["aaaaa"]
    @test insertdata!(stream, 2, "bbbbb") == ["bbbbb", "ccccc"]
    @test insertdata!(stream, 5, "eeeee") == String[]
    @test insertdata!(stream, 4, "ddddd") == ["ddddd", "eeeee"]
end
