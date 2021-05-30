@testset "221.maximal-square.jl" begin
    @test 4 == maximal_square(hcat([['1', '0', '1', '0', '0'], ['1', '0', '1', '1', '1'],
                               ['1', '1', '1', '1', '1'], ['1', '0', '0', '1', '0']]...))
    @test maximal_square(hcat([['0','1'],['1','0']]...)) == 1
    @test maximal_square(hcat([['0']]...)) == 0
end
