@testset "14.longest-common-prefix.jl" begin
    @test longest_common_prefix(["flower", "flow", "flight"]) == "fl"
    @test longest_common_prefix(["dog", "racecar", "car"]) == ""
    @test longest_common_prefix(["reflower", "flow", "flight"]) == ""
end
