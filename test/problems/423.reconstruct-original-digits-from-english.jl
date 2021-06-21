@testset "423.reconstruct-original-digits-from-english.jl" begin
    @test original_digits("owoztneoer") == "012"
    @test original_digits("fviefuro") == "45"
end