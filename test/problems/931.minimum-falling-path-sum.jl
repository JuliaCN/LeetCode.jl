@testset "931.minimum-falling-path-sum.jl" begin
    @test min_falling_path_sum([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == 12
    @test min_falling_path_sum([
        [100, -42, -46, -41], [31, 97, 10, -10], [-58, -51, 82, 89], [51, 81, 69, -51]
    ]) == -36
end
