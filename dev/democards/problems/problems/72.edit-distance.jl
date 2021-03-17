# @lc code=start
using LeetCode

function min_distance(word1::String, word2::String)::Int32
    m, n = length(word1) + 1, length(word2) + 1
    dp = fill(0, m, n)

    for i = 1:m
        dp[i, 1] = i - 1
    end

    for j = 1:n
        dp[1, j] = j - 1
    end

    for i = 2:m, j = 2:n
        if word1[i-1] == word2[j-1]
            dp[i, j] = dp[i-1, j-1]
        else
            dp[i, j] = min(dp[i-1, j-1], dp[i, j-1], dp[i-1, j]) + 1
        end
    end

    return dp[m, n]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

