# @lc code=start
using LeetCode

function merge_stones(stones::Vector{Int}, K::Int)
    len = length(stones)
    (len - 1) % (K - 1) != 0 && return -1
    pre = fill(0, len + 1)
    cumsum!(@view(pre[2:len + 1]), stones)
    dp = fill(0, len, len)
    for m in K:len, i in 1:(len - m + 1)
        dp[i, i + m - 1] = minimum(dp[i, k] + dp[k + 1, i + m - 1]
                               for k in i:(K - 1):(i + m - 2)) +
                           ((m - 1) % (K - 1) == 0 ? pre[i + m] - pre[i] : 0)
    end
    return dp[1, len]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

