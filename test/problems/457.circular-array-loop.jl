@testset "457.circular-array-loop.jl" begin
    @test circular_array_loop([2,-1,1,2,2]) == true
    @test circular_array_loop([-1,2]) == false
    @test circular_array_loop([-2,1,-1,-2,-2]) == false
end