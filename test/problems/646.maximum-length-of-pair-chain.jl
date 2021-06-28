@testset "646.maximum-length-of-pair-chain.jl" begin
    @test find_longest_chain([(1, 2), (2, 3), (3, 4), (1, 3)]) == 2
    @test find_longest_chain([(1, 2), (1, 2), (1, 2)]) == 1
    @test find_longest_chain([(1, 2), (2, 3)]) == 1
    @test find_longest_chain([(1, 2), (2, 3), (3, 4)]) == 2
    @test find_longest_chain(Tuple{Int, Int}[]) == 0
end

