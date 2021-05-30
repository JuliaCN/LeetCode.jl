# @lc code=start
using LeetCode

function maximal_square(matrix::Matrix{Char})
    length(matrix) == 0 && return 0
    maxs = any(==('1'), matrix)
    maxs == 0 && return 0
    m, n = size(matrix)
    dp = fill(0, size(matrix))
    for i in 1:m
        dp[i, 1] = matrix[i, 1] == '1'
    end
    for j in 1:n
        dp[1, j] = matrix[1, j] == '1'
    end
    for i in 2:m, j in 2:n
        if matrix[i, j] == '1'
            dp[i, j] = min(dp[i, j - 1], dp[i - 1, j], dp[i - 1, j - 1]) + 1
            maxs = max(maxs, dp[i, j])
        end
    end
    return maxs * maxs
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

