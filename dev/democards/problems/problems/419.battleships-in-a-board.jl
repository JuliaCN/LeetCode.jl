# @lc code=start
using LeetCode

function count_battleships(board::Matrix{Char})
    res = 0
    for I in CartesianIndices(board)
        board[I] == '.' && continue
        i, j = I.I
        (i == 1 || board[i - 1, j] == '.') &&
            (j == 1 || board[i, j - 1] == '.') &&
            (res += 1)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

