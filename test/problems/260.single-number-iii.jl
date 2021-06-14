@testset "260.single-number-iii.jl" begin
    r1 = single_number_iii([1, 2, 1, 3, 2, 5])
    @test r1 == (3, 5) || r1 == (5, 3)
    r1 = single_number_iii([-1, 0])
    @test r1 == (-1, 0) || r1 == (0, -1)
    r1 = single_number_iii([1, 0])
    @test r1 == (1, 0) || r1 == (0, 1)
end
