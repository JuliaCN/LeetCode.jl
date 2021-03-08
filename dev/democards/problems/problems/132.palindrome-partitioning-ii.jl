# @lc code=start
using LeetCode

function partition_ps132(s::String)
    len = length(s)
    is_ps = fill(true, len, len)
    dp = fill(typemax(Int) >> 4, len)
    dp[1] = 0
    for i in len:-1:1, j in (i + 1):len
        is_ps[i, j] = (s[i] == s[j]) && is_ps[i + 1, j - 1]
    end
    for i in 2:len
        if is_ps[1, i]
            dp[i] = 0
        else
            for j in 2:i
                (is_ps[j, i]) && (dp[i] = min(dp[i], dp[j - 1] + 1))
            end
        end
    end
    return dp[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

