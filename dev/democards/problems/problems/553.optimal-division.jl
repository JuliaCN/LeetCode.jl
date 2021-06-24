# @lc code=start
using LeetCode

function optimal_division(nums::Vector{Int})
    (length(nums) == 1) && return string(nums[1])
    (length(nums) == 2) && return string(nums[1]) * "/" * string(nums[1])
    res = "$(nums[1])/($(nums[2])"
    for i in 3:length(nums)
        res *= "/$(nums[i])"
    end
    return res * ")"
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

