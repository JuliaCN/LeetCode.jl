# @lc code=start
using LeetCode

function longest_palindrome_subseq(s::String)
    len = length(s)
    dp = fill(0, len, len)
    for i in len:-1:1
        dp[i, i] = 1
        for j in i+1:len
            dp[i, j] = (s[i] == s[j]) ? dp[i + 1, j - 1] + 2 : max(dp[i + 1, j], dp[i, j - 1])
        end
    end
    return dp[1, len]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

