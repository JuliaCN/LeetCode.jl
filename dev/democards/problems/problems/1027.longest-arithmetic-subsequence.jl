# @lc code=start
using LeetCode

function longest_arith_seq_length(nums::Vector{Int})
    len = length(nums)
    len == 1 && return 0
    dp = fill(0, len, 1001)
    res = 0
    for i in 1:len, j in 1:(i - 1)
        d = nums[i] - nums[j] + 501
        dp[i, d] = max(dp[i, d], dp[j, d] + 1)
        res = max(res, dp[i, d])
    end
    return res + 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

