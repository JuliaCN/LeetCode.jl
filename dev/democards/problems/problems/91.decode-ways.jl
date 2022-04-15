# @lc code=start
using LeetCode

function num_decodings(s)
    len = length(s)
    dp = fill(0, len + 1)
    dp[1] = 1
    for i in 1:len
        s[i] != '0' && (dp[i + 1] += dp[i])
        (i > 1 && s[i - 1] != '0' && parse(Int, s[(i - 1):i]) <= 26) &&
            (dp[i + 1] += dp[i - 1])
    end
    return dp[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

