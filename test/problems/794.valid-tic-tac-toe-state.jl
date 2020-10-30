@testset "794.valid-tic-tac-toe-state.jl" begin
@test validTicTacToe([
    'O' '_' '_';
    '_' '_' '_';
    '_' '_' '_';
]) == false

@test validTicTacToe([
    'X' 'O' 'X';
    '_' 'X' '_';
    '_' '_' '_';
]) == false

@test validTicTacToe([
    'X' 'X' 'X';
    '_' '_' '_';
    'O' 'O' 'O';
]) == false

@test validTicTacToe([
    'X' 'O' 'X';
    'O' '_' 'O';
    'X' 'O' 'X';
]) == true
end