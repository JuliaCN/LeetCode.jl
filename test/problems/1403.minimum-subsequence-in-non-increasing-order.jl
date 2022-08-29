@testset "1403.minimum-subsequence-in-non-increasing-order.jl" begin
    @test min_subsequence([4, 3, 10, 9, 8]) == [10, 9]
    @test min_subsequence([4, 4, 7, 6, 7]) == [7, 7, 6]
    @test min_subsequence([6]) == [6]
end
