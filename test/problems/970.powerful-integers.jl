@testset "970.powerful-integers.jl" begin
    @test powerful_integers(2, 3, 10) == Set([2, 3, 4, 5, 7, 9, 10])
    @test powerful_integers(3, 5, 15) == Set([2, 4, 6, 8, 10, 14])
    @test powerful_integers(1, 5, 15) == Set([2, 6])
    @test powerful_integers(1, 1, 5) == Set([2])
end