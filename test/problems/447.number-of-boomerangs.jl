@testset "447.number-of-boomerangs.jl" begin
    @test number_of_boomerangs([[0, 0], [1, 0], [2, 0]]) == 2
    @test number_of_boomerangs([[1, 1], [2, 2], [3, 3]]) == 2
    @test number_of_boomerangs([[1, 1]]) == 0
end
