@testset "6.zig-zag-conversion.jl" begin
    @test zig_zag_convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"
    @test zig_zag_convert("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"
    @test zig_zag_convert("P", 1) == "P"
end
