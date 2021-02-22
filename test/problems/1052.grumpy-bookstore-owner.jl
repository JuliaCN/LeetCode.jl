@testset "1052.grumpy-bookstore-owner.jl" begin
    @test max_satisfied([1, 0, 1, 2, 1, 1, 7, 5], [0, 1, 0, 1, 0, 1, 0, 1], 3) == 16
end