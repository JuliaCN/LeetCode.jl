@testset "888.fair-candy-swap.jl" begin
    @test fair_candy_swap([1, 1], [2, 2]) == [1, 2]
    @test fair_candy_swap([1, 2], [2, 3]) == [2, 3]
    @test fair_candy_swap([2], [1, 3]) == [2, 3]
    @test fair_candy_swap([1, 2, 5], [2, 4]) == [5, 4]
end