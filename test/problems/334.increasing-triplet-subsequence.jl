@testset "334.increasing-triplet-subsequence.jl" begin
    @test increasing_triplet(collect(1:5)) == true
    @test increasing_triplet([5, 4, 3, 2, 1]) == false
    @test increasing_triplet([2, 1, 5, 0, 4, 6]) == true
end