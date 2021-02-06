@testset "1432.max-difference-you-can-get-from-changing-an-integer.jl" begin
    @test max_score_1432([1,2,3,4,5,6,1], 3) == 12
    @test max_score_1432([2,2,2], 2) == 4
    @test max_score_1432([9,7,7,9,7,7,9], 7) == 55
    @test max_score_1432([1,79,80,1,1,1,200,1], 3) == 202
    @test max_score_1432([1,1000,1], 1) == 1
end