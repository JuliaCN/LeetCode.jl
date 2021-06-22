@testset "477.total-hamming-distance.jl" begin
    @test total_hamming_distance([4, 14, 2]) == 6
    @test total_hamming_distance([4, 14, 4]) == 4
end
