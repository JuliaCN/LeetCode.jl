@testset "1035.uncrossed-lines.jl" begin
    @test max_uncrossed_lines([1,4,2], [1,2,4]) == 2
    @test max_uncrossed_lines([2,5,1,2,5], [10,5,2,1,5,2]) == 3
    @test max_uncrossed_lines([1,3,7,1,7,5], [1,9,2,5,1]) == 2
end