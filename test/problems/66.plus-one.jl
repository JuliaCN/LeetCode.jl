@testset "66.plus-one.jl" begin
    rvdigits = i -> reverse!(digits(i))
    @test all(digits_plus_one(rvdigits(i)) == rvdigits(i + 1) for i in 0:1000)
    @test digits_plus_one([9, 9, 9, 9]) == [1, 0, 0, 0, 0]
    @test all(plus_one(rvdigits(i)) == rvdigits(i + 1) for i in 0:1000)
    @test plus_one([9, 9, 9, 9]) == [1, 0, 0, 0, 0]
end
