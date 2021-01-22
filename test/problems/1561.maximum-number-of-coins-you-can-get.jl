@testset "1561.maximum-number-of-coins-you-can-get.jl" begin
    @test max_coins([29, 24, 17, 44, 44, 39, 12, 31, 20, 36, 34, 59, 29, 59, 50, 38, 16, 67, 26, 76]) == 305
    @test max_coins([9,8,7,6,5,1,2,3,4]) == 18
    @test max_coins([2,4,1,2,7,8]) == 9
    @test max_coins([3, 4, 6]) == 4
end