@testset "363.max-sum-of-rectangle-no-larger-than-k.jl" begin
    @test max_sum_submatrix(hcat([[1, 0, 1], [0, -2, 3]]...), 2) == 2
    @test max_sum_submatrix(hcat([[2, 2, -1]]...), 3) == 3
end