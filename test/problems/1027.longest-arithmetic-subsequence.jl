@testset "1027.longest-arithmetic-subsequence.jl" begin
    @test longest_arith_seq_length([20, 1, 15, 3, 10, 5, 8]) == 4
    @test longest_arith_seq_length([3, 6, 9, 12]) == 4
    @test longest_arith_seq_length([9, 4, 7, 2, 10]) == 3
    @test longest_arith_seq_length([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 10
end
