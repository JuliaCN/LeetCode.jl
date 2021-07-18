@testset "1072.flip-columns-for-maximum-number-of-equal-rows.jl" begin
    @test max_equal_rows_after_flips(hcat([[0, 1], [1, 1]]...)) == 1
    @test max_equal_rows_after_flips(hcat([[0, 1], [1, 0]]...)) == 2
    @test max_equal_rows_after_flips(hcat([[0, 0, 0], [0, 0, 1], [1, 1, 0]]...)) == 2
end
