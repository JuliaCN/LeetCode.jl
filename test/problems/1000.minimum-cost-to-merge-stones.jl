@testset "1000.minimum-cost-to-merge-stones.jl" begin
    @test merge_stones([3,2,4,1], 3) == -1
    @test merge_stones([3,5,1,2,6], 3) == 25
    @test merge_stones([3,2,4,1], 2) == 20
end