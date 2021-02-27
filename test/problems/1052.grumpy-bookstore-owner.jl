@testset "1052.grumpy-bookstore-owner.jl" begin
    @test max_satisfied([1, 0, 1, 2, 1, 1, 7, 5], [0, 1, 0, 1, 0, 1, 0, 1], 3) == 16
    @test max_satisfied([5, 8], [0, 1], 1) == 13
    @test max_satisfied([3], [1], 1) == 3
    @test max_satisfied([1], [0], 1) == 1
end
