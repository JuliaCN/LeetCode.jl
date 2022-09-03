# @lc code=start
using LeetCode

function min_score_triangulation(values::Vector{Int})
    dp = fill(0, 50, 50)
    function dfs!(dp, i, j)
        j - i < 2 && return 0
        dp[i, j] > 0 && return dp[i, j]
        j - i == 2 && (return dp[i, j] = values[i] * values[i + 1] * values[j])
        v = values[i] * values[j]
        dp[i, j] = minimum(v * values[k] + dfs!(dp, i, k) + dfs!(dp, k, j) for k in i + 1:j - 1)
    end
    dfs!(dp, 1, length(values))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

