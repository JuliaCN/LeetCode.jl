@testset "1089.duplicate-zeros.jl" begin
    arr = [1,0,2,3,0,4,5,0]
    duplicate_zeros!(arr)
    @test arr == [1,0,0,2,3,0,0,4]

    arr2 = [1,2,3]
    duplicate_zeros!(arr2)
    @test arr2 == [1,2,3]
end
