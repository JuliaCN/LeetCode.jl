@testset "397.integer-replacement.jl" begin
    @test integer_replacement(8) == 3
    @test integer_replacement(7) == 4
    for (i, j) in zip([25, 19, 235, 2623, 53], [6, 6, 11, 14, 8])
        @test integer_replacement(i) == j    
    end
end
