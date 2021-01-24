@testset "674.longest-continuous-increasing-subsequence.jl" begin
    @test find_length_of_lcis([1,3,5,4,7]) == 3
    @test find_length_of_lcis([2, 2, 2, 2, 2]) == 1
    @test find_length_of_lcis(Int[]) == 0
end
