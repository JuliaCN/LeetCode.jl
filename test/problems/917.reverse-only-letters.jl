@testset "917.reverse-only-letters.jl" begin
    @test reverse_only_letters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!"
    @test reverse_only_letters("a-bC-dEf-ghIj") == "j-Ih-gfE-dCba"
    @test reverse_only_letters("ab-cd") == "dc-ba"
end
