@testset "565" begin
    @test array_nesting([5, 4, 0, 3, 1, 6, 2]) == 4
    @test array_nesting([30, 15, 49, 34, 48, 9, 11, 25, 44, 47, 35, 41, 20, 23, 22, 37, 1,
                         18, 10, 5, 3, 43, 26, 4, 42, 6, 39, 0, 36, 21, 16, 50, 38, 45, 13,
                         46, 17, 40, 28, 7, 24, 12, 27, 14, 33, 31, 2, 8, 29, 19, 32]) == 21
end
