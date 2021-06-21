@testset "419.battleships-in-a-board.jl" begin
    @test count_battleships(['X' '.' '.' 'X'
                             '.' '.' '.' 'X'
                             '.' '.' '.' 'X']) == 2
    @test count_battleships(['.' '.' '.' 'X'
                             'X' 'X' '.' 'X'
                             '.' '.' '.' 'X']) == 2
end
