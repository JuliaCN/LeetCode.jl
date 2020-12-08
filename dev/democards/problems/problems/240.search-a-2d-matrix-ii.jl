# @lc code=start
using LeetCode

function search_matrix(matrix::Matrix{Int}, target::Int)::Bool
    row, col = size(matrix)
    i, j = row, 1

    while (i > 0 && j <= col)
        last = matrix[i, j]

        if (last == target)
            return true
        elseif last > target
            i -= 1
        else
            j += 1
        end
    end

    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

