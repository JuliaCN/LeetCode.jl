@testset "28.implement-strstr.jl" begin
    @test strStr("hello", "ll") == 2
    @test strStr("aaaaa", "bba") == -1
    @test strStr("sadbutsad", "sad") == 0
    @test strStr("leetcode", "leeto") == -1
end
