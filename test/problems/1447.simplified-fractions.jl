@testset "1447.simplified-fractions.jl" begin
    @test simplified_fractions(1) == []
    @test simplified_fractions(2) == ["1/2"]
    @test sort(simplified_fractions(3)) == sort(["1/2", "1/3", "2/3"])
    @test sort(simplified_fractions(4)) == sort(["1/2", "1/3", "1/4", "2/3", "3/4"])
end
