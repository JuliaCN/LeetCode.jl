@testset "120.triangle.jl" begin
    @test minimumTotal([
		     [2],
		    [3,4],
		   [6,5,7],
		  [4,1,8,3]
		]) == 11
    @test minimumTotal([[0]]) == 0
end
