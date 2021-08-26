# @lc code=start
using LeetCode

function min_distance(word1::String, word2::String)::Int32
    m, n = length(word1) + 1, length(word2) + 1
    dp = zeros(Int32, m, n)
    dp[:, 1] .= (1:m) .- 1
    dp[1, :] .= (1:n) .- 1

    for i in 2:m, j in 2:n
        dp[i, j] =
            1 + min(
                dp[i - 1, j - 1] - Int(word1[i - 1] == word2[j - 1]),
                dp[i, j - 1],
                dp[i - 1, j],
            )
    end
    return dp[end, end]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

