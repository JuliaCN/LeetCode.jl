# @lc code=start
using LeetCode

function maximum_subarray(nums::Vector{Int})::Int
    pre, max_res = 0, nums[1]
    for num in nums
        pre = max(pre + num, num)
        max_res = max(pre, max_res)
    end
    return max_res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

