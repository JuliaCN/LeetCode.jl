"""
@lc app=leetcode id=794 lang=python3

[794] Valid Tic-Tac-Toe State

https://leetcode.com/problems/valid-tic-tac-toe-state/description/

algorithms
Medium (31.90%)
Likes:    217
Dislikes: 634
Total Accepted:    26.7K
Total Submissions: 81.6K
Testcase Example:  '["O  ","   ","   "]'

A Tic-Tac-Toe board is given as a string array board. Return True if and only
if it is possible to reach this board position during the course of a valid
tic-tac-toe game.

The board is a 3 x 3 array, and consists of characters " ", "X", and "O".
The " " character represents an empty square.

Here are the rules of Tic-Tac-Toe:


Players take turns placing characters into empty squares (" ").
The first player always places "X" characters, while the second player always
places "O" characters.
"X" and "O" characters are always placed into empty squares, never filled
ones.
The game ends when there are 3 of the same (non-empty) character filling any
row, column, or diagonal.
The game also ends if all squares are non-empty.
No more moves can be played if the game is over.



Example 1:
Input: board = ["O  ", "   ", "   "]
Output: false
Explanation: The first player always plays "X".

Example 2:
Input: board = ["XOX", " X ", "   "]
Output: false
Explanation: Players take turns making moves.

Example 3:
Input: board = ["XXX", "   ", "OOO"]
Output: false

Example 4:
Input: board = ["XOX", "O O", "XOX"]
Output: true


Note:


board is a length-3 array of strings, where each string board[i] has length
3.
Each board[i][j] is a character in the set {" ", "X", "O"}.




@lc code=start
"""
function validTicTacToe(board::Array{Char})::Bool
    n_X, n_O = 0, 0

    for x in board
        if x == 'X'
            n_X += 1
        elseif x == 'O'
            n_O += 1
        end
    end

    if n_O > n_X || n_X >= n_O + 2
        false
    elseif n_X >= 3
        if n_X == n_O
            if is_win(board, 'X')
                false  # Impossible! n_X should == x_O + 1
            else
                true
            end
        else
            # @assert n_X == n_O + 1
            if is_win(board, 'O')
                false  # Impossible!
            else
                true
            end
        end
    else
        true
    end
end

function is_win(b, x)
    return b[1] == b[2] == b[3] == x ||
           b[4] == b[5] == b[6] == x ||
           b[7] == b[8] == b[9] == x ||
           b[1] == b[4] == b[7] == x ||
           b[2] == b[5] == b[8] == x ||
           b[3] == b[6] == b[9] == x ||
           b[1] == b[5] == b[9] == x ||
           b[3] == b[5] == b[7] == x
end
