@testset "767.reorganize-string.jl" begin
    @test reorganize_string("vvvlo") == "vlvov" || reorganize_string("vvvlo") == "vovlv"
    @test reorganize_string("aab") == "aba"
    @test reorganize_string("aaba") == ""
end
