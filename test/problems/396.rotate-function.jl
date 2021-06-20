@testset "396.rotate-function.jl" begin
    @test max_rotate_function([4, 3, 2, 6]) == 26
    @test max_rotate_function([40, 3, 44, 39, 49, 6, 29, 14, 8, 50, 3, 18, 12, 33, 40, 17, 22, 8, 25, 38, 2, 15, 25, 27, 30, 9, 36, 40, 3, 40]) == 11852
end
