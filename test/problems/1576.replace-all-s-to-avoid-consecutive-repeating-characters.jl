@testset "1576.replace-all-s-to-avoid-consecutive-repeating-characters.jl" begin
    @test modify_string("j?qg??b") == "jaqgacb"
    @test modify_string("ubv?w") == "ubvaw"
    @test modify_string("?zs") == "azs"
    @test modify_string("??yw?ipkj?") == "abywaipkja"
    @test modify_string("b?a") == "bca"
end