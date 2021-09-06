@testset "704.binary-search.jl" begin
    @test search704([-1,0,3,5,9,12], 9) == 5
    @test search704([-1,0,3,5,9,12], 2) == 0
end
