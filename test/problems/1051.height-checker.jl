@testset "1051.height-checker.jl" begin
    @test height_checker([1, 1, 4, 2, 1, 3]) == 3
    @test height_checker([5, 1, 2, 3, 4]) == 5
    @test height_checker([1, 2, 3, 4, 5]) == 0
end
