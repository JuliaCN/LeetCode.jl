@testset "1.two-sum.jl" begin
    @test two_sum([2, 7, 11, 15], 9) == (1, 2)
    @test two_sum([3, 2, 4], 6) == (2, 3)
    @test two_sum([3, 3], 6) == (1, 2)
end
