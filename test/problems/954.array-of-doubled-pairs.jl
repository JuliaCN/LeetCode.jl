@testset "954.array-of-doubled-pairs.jl" begin
    @test canReorderDoubled([3, 1, 3, 6]) == false
    @test canReorderDoubled([2, 1, 2, 6]) == false
    @test canReorderDoubled([4, -2, 2, -4]) == true
    @test canReorderDoubled([1, 2, 3, 16, 8, 4]) == false
end
