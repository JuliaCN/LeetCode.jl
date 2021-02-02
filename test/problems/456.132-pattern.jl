@testset "456.132-pattern.jl" begin
    @test find132pattern([3, 1, 4, 2]) == true
    @test find132pattern([1, 2, 3, 4]) == false
    @test find132pattern([-1, 3, 2, 0]) == true
end