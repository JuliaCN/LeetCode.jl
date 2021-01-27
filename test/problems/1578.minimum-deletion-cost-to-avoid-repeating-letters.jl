@testset "1578.minimum-deletion-cost-to-avoid-repeating-letters.jl" begin
    @test min_cost_1578("abaac", [1, 2, 3, 4, 5]) == 3
    @test min_cost_1578("abc", [1, 2, 3]) == 0
    @test min_cost_1578("aabaa", [1,2,3,4,1]) == 2
end