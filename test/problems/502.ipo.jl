@testset "502.ipo.jl" begin
    @test find_maximized_capital(2, 0, [1, 2, 3], [0, 1, 1]) == 4
    @test find_maximized_capital(3, 0, [1, 2, 3], [0, 1, 2]) == 6
    @test find_maximized_capital(1, 0, [1, 2, 3], [1, 1, 2]) == 0
end
