@testset "43.multiply-strings.jl" begin
    @test trap([0,1,0,2,1,0,1,3,2,1,2,1]) == 6
    @test trap([4,2,0,3,2,5]) == 9
end
