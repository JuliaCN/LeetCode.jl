@testset "392.is-subsequence.jl" begin
    @test is_subsequence("abc", "ahbgdc") == true
    @test is_subsequence("axc", "ahbgdc") == false
    @test is_subsequence("", "ahbgdc") == true
end
