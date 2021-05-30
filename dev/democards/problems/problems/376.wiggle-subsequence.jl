# @lc code=start
using LeetCode
function wiggle_max_length(nums::Vector{Int})::Int
    len = length(nums)
    (len < 2) && return len

    pre_diff = nums[2] - nums[1]
    res = (pre_diff == 0 ? 1 : 2)
    for i in 3:len
        diff = nums[i] - nums[i - 1]
        if diff > 0 && pre_diff <= 0 || diff < 0 && pre_diff > 0
            res += 1
            pre_diff = diff
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

