using Test

@testset "1046.last-stone-weight.jl" begin
    
    @test last_stone_weight([2, 7, 4, 1, 8, 1]) == 1  # Problem example
    @test last_stone_weight([1, 1]) == 0              # All stones cancel out
    @test last_stone_weight([5]) == 5                # Single stone
    @test last_stone_weight([10, 4, 3]) == 3         # Large differences
    @test last_stone_weight([8, 8, 2, 2, 3]) == 1    # Mixed case
    @test last_stone_weight([7, 6, 7, 6]) == 0       # Multiple canceling pairs

end