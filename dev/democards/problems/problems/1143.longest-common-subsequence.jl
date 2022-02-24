# @lc code=start
using LeetCode

function longest_common_subsequence(itr1, itr2)::Int32
    m, n = length(itr1) + 1, length(itr2) + 1
    dp = fill(0, m, n)

    for i in 2:m, j in 2:n
        dp[i, j] = (itr1[i - 1] == itr2[j - 1]) ? (dp[i - 1, j - 1] + 1) : max(dp[i - 1, j], dp[i, j - 1])
    end

    return dp[m, n]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

