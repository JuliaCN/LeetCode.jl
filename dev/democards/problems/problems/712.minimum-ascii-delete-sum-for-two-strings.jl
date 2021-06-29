# @lc code=start
using LeetCode

function minimum_delete_sum(s1::String, s2::String)
    m, n = length(s1) + 1, length(s2) + 1
    dp = fill(0, m, n)
    dp[2:end, 1] .= cumsum(codeunits(s1))
    dp[1, 2:end] .= cumsum(codeunits(s2))
    for i in 2:m, j in 2:n
        dp[i, j] = (s1[i - 1] == s2[j - 1]) ? (dp[i - 1, j - 1]) :
                   min(dp[i - 1, j] + Int(s1[i - 1]), dp[i, j - 1] + Int(s2[j - 1]))
    end
    return dp[m, n]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

