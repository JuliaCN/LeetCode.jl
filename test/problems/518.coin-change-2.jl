@testset "518.coin-change-2.jl" begin
    @test change(5, [1, 2, 5]) == 4
    @test change(3, [2]) == 0
    @test change(10, [10]) == 1
end
