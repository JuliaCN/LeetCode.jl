# @lc code=start
using LeetCode

function is_valid_sudoku(board::Vector{Vector{Char}})::Bool
    function check_line(i::Int)::Bool
        s = replace(join(board[i]), "." => "")
        return length(s) == length(Set{Char}(s))
    end
    function check_col(i::Int)::Bool
        s = replace(join(board[k][i] for k in 1:9), '.' => "")
        return length(s) == length(Set{Char}(s))
    end
    function check_box(i::Int, j::Int)::Bool
        s = replace(join(board[i + p1][j + p2] for p1 in 1:3 for p2 in 1:3), "." => "")
        return length(s) == length(Set{Char}(s))
    end
    return all(check_line(i) && check_col(i) for i in 1:9) &&
           all(check_box(3 * (i - 1), 3 * (j - 1)) for i in 1:3 for j in 1:3)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

