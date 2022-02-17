@testset "242.valid-anagram.jl" begin
    @test is_anagram("nagaram", "anagram") == true
    @test is_anagram("rat", "car") == false
end
