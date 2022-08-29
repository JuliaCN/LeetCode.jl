@testset "605.can-place-flowers.jl" begin
    @test min_startvalue([-3, 2, -3, 4, 2]) == 5
    @test min_startvalue([1, 2]) == 1
    @test min_startvalue([1, -2, -3]) == 5
end