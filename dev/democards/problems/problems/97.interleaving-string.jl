# @lc code=start
using LeetCode

function is_interleave(s1::String, s2::String, s3::String)
    len1, len2, len3 = length(s1), length(s2), length(s3)
    len1 + len2 != len3 && return false
    dp = OffsetArray(fill(false, len1 + 1, len2 + 1), -1, -1)
    dp[0, 0] = true
    for i in 0:len1, j in 0:len2
        p = i + j
        i > 0 && (dp[i, j] |= dp[i - 1, j] && s1[i] == s3[p])
        j > 0 && (dp[i, j] |= dp[i, j - 1] && s2[j] == s3[p])
    end
    return dp[end, end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

