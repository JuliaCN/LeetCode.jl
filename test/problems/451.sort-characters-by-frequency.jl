@testset "451.sort-characters-by-frequency.jl" begin
    @test frequency_sort("tree") == "eetr"
    @test frequency_sort("cccaaa") == "cccaaa"
    @test frequency_sort("Aabb") == "bbaA"
end