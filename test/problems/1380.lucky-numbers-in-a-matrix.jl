@testset "1380.lucky-numbers-in-a-matrix.jl" begin
    @test lucky_numbers(hcat([[3,7,8],[9,11,13],[15,16,17]]...)) == [15]
    @test lucky_numbers(hcat([[1,10,4,2],[9,3,8,7],[15,16,17,12]]...)) == [12]
    @test lucky_numbers(hcat([[7,8],[1,2]]...)) == [7]
end
