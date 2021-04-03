@testset "1143.longest-common-subsequence.jl" begin
    @test longest_common_subsequence("abcde", "ace") == 3
    @test longest_common_subsequence("abc", "abc") == 3
    @test longest_common_subsequence("abc", "def") == 0
end
