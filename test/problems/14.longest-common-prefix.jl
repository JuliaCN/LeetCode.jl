@testset "14.longest-common-prefix.jl" begin
    @test longest_common_prefix(["flower", "flow", "flight"]) == "fl"
    @test longest_common_prefix(["dog", "racecar", "car"]) == ""
    @test longest_common_prefix(["reflower", "flow", "flight"]) == ""
    @test longest_common_prefix(["abc"]) == "abc"
    @test longest_common_prefix(fill("abc", 5)) == "abc"
    @test longest_common_prefix(fill("", 4)) == ""
end
