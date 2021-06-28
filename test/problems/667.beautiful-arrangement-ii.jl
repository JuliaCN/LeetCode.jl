@testset "667.beautiful-arrangement-ii.jl" begin
    @test beautiful_arrangement(3, 1) == [1, 2, 3]
    @test beautiful_arrangement(3, 2) == [1, 3, 2]
    @test beautiful_arrangement(6, 3) == [1, 2, 3, 6, 4, 5]
    res1 = beautiful_arrangement(60, 32)
    @test res1 ==
          [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
           23, 24, 25, 26, 27, 28, 60, 29, 59, 30, 58, 31, 57, 32, 56, 33, 55, 34, 54, 35,
           53, 36, 52, 37, 51, 38, 50, 39, 49, 40, 48, 41, 47, 42, 46, 43, 45, 44]
    @test length(Set(abs(res1[i] - res1[i + 1]) for i in 1:(length(res1) - 1))) == 32
end
