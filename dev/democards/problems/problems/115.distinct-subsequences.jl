# @lc code=start
using LeetCode

function num_distinct(s::String, t::String)::Int32
    m, n = length(s) + 1, length(t) + 1
    dp = fill(0, m, n)

    dp[:, 1] .= 1

    for i = 2:m, j = 2:n
        dp[i, j] = (s[i-1] == t[j-1]) ? (dp[i-1, j-1] + dp[i-1, j]) : dp[i-1, j]
    end

    return dp[m, n]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

