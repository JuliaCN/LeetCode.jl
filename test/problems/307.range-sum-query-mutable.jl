@testset "307.range-sum-query-mutable.jl" begin
    @testset "307 case 1" begin
        ST = SegmentTree([1, 3, 5])
        @test sum_range(ST, 1, 3) == 9
        update!(ST, 2, 2)
        @test sum_range(ST, 1, 3) == 8
    end
end
