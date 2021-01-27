@testset "1577.number-of-ways-where-square-of-number-is-equal-to-product-of-two-numbers.jl" begin
    @test num_triplets([7,4], [5,2,8,9]) == 1
    @test num_triplets([1, 1], [1, 1, 1]) == 9
    @test num_triplets([7,7,8,3], [1,2,9,7]) == 2
    @test num_triplets([4,7,9,11,23], [3,5,1024,12,18]) == 0
end