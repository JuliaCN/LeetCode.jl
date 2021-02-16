@testset "559.maximum-depth-of-n-ary-tree.jl" begin
    @test max_depth_559([[3, 2, 4], Int[], [5, 6], Int[], Int[], Int[]]) == 3
    @test max_depth_559([[2, 3, 4, 5], Int[], [6, 7], [8], [9, 10], Int[], [11], [12], [13], Int[], [14], Int[], Int[], Int[]]) == 5
end