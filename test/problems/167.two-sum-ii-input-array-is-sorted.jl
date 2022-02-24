@testset "167.two-sum-ii-input-array-is-sorted.jl" begin
    @test two_sum_167([2, 7, 11, 15], 9) == [1, 2]
    @test two_sum_167([2, 3, 4], 6) == [1, 3]
    @test two_sum_167([-1, 0], -1) == [1, 2]
end
