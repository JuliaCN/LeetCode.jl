using Test: include
@testset "31.next-permutation.jl" begin
    @test next_permutation([1,1,5]) == [1, 5, 1]
    @test next_permutation([1,1,5]) == [1, 5, 1]
    @test next_permutation([1, 1, 1]) == [1, 1, 1]
    @test next_permutation([1]) == [1]
    @test next_permutation([1,2,3]) == [1, 3, 2]
    @test next_permutation(Int[]) == Int[]
end
