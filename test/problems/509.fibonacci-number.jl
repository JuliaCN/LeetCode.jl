@testset "509.fibonacci-number.jl" begin
    @test fib.(0:10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
end
