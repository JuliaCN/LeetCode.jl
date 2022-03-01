@testset "39.combination-sum.jl" begin
    @test combination_sum_39([2, 3, 6, 7], 7) == [[2, 2, 3], [7]]
    @test combination_sum_39([2, 3, 5], 8) == [[2, 2, 2, 2], [2, 3, 3], [3, 5]]
    @test combination_sum_39([2], 1) == Vector{Int}[]
end
