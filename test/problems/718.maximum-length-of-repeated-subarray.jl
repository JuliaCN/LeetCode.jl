@testset "718.maximum-length-of-repeated-subarray.jl" begin
    @test find_length718([1, 2, 3, 2, 1], [3, 2, 1, 4, 7]) == 3
    @test find_length718([1, 2, 3, 2, 1], [3, 2, 4, 1, 7]) == 2
end
