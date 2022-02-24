@testset "1332.remove-palindromic-subsequences.jl" begin
    @test remove_palindromic_subsequences("ababa") == 1
    @test remove_palindromic_subsequences("abb") == 2
    @test remove_palindromic_subsequences("baabb") == 2
end
