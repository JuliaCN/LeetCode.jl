@testset "532.k-diff-pairs-in-an-array.jl" begin
    @test find_kpairs([3, 1, 4, 1, 5], 2) == 2
    @test find_kpairs([3, 1, 4, 1, 5], 0) == 1
end