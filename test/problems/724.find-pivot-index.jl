@testset "724.find-pivot-index.jl" begin
    @test pivot_index([1, 7, 3, 6, 5, 6]) == 4
    @test pivot_index([1, 2, 3]) == 0
    @test pivot_index(Int[]) == 0
    @test pivot_index([-1, 1]) == 0 
end