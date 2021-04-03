# @lc code=start
using LeetCode

function longest_common_subsequence(text1::String, text2::String)::Int32
    m, n = length(text1) + 1, length(text2) + 1
    dp = fill(0, m, n)

    for i in 2: m, j in 2: n
        dp[i, j] = (text1[i - 1] == text2[j - 1]) ? (dp[i - 1, j - 1] + 1) : max(dp[i - 1, j], dp[i, j - 1])
    end

    return dp[m, n]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

