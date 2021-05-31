@testset "996.number-of-squareful-arrays.jl" begin
    @test num_squareful_perms([1,17,8]) == 2
    @test num_squareful_perms([2, 2, 2]) == 1
    @test num_squareful_perms([2, 2, 7]) == 3
end