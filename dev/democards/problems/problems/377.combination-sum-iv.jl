# @lc code=start
using LeetCode

function combination_sum4(nums::Vector{Int}, target::Int)
    dp = OffsetArray(fill(0, target + 1), -1)
    dp[0] = 1
    for i in 1:target, num in nums
        (num <= i) && (dp[i] += dp[i - num])
    end
    return dp[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

