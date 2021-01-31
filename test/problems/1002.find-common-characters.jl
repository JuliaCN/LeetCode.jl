@testset "1002.find-common-characters.jl" begin
    @test common_chars(["bella","label","roller"]) == ['l', 'l', 'e']
    @test common_chars(["cool","lock","cook"]) == ['c', 'o']
end