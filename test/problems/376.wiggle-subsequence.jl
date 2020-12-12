@testset "376.wiggle-subsequence.jl" begin
    @test wiggle_max_length([1,2,3,4,5,6,7,8,9]) == 2
    @test wiggle_max_length([1,17,5,10,13,15,10,5,16,8]) == 7
    @test wiggle_max_length([1,7,4,9,2,5]) == 6 
    @test wiggle_max_length([0, 0]) == 1
end
