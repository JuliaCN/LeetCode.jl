@testset "36.valid-sudoku.jl" begin
    board = [
        ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
        ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
        ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
        ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
        ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
        ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
        ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
        ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
        ['.', '.', '.', '.', '8', '.', '.', '7', '9'],
    ]
    @test is_valid_sudoku(board) == true

    board = [
        ['.', '.', '4', '.', '.', '.', '6', '3', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
        ['5', '.', '.', '.', '.', '.', '.', '9', '.'],
        ['.', '.', '.', '5', '6', '.', '.', '.', '.'],
        ['4', '.', '3', '.', '.', '.', '.', '.', '1'],
        ['.', '.', '.', '7', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '5', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
    ]
    @test is_valid_sudoku(board) == false

    board = [
        ['8', '3', '.', '.', '7', '.', '.', '.', '.'],
        ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
        ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
        ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
        ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
        ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
        ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
        ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
        ['.', '.', '.', '.', '8', '.', '.', '7', '9'],
    ]
    @test is_valid_sudoku(board) == false
end
