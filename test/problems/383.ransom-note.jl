@testset "383.ransom-note.jl" begin
    @test can_construct("a", "b") == false
    @test can_construct("aa", "ab") == false
    @test can_construct("aa", "aba") == true
end
