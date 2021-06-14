# @lc code=start
using LeetCode

function largest_divisible_subset(nums::Vector{Int})
    sort!(nums)
    len = length(nums)
    dp = fill(1, len)
    prev = fill(0, len)
    for i in 2:len, j in 1:(i - 1)
        if nums[i] % nums[j] == 0 && dp[i] < dp[j] + 1
            dp[i] = dp[j] + 1
            prev[i] = j
        end
    end
    idx = argmax(dp)
    res =  Int[]
    while idx != 0
        push!(res, nums[idx])
        idx = prev[idx]
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

