# @lc code=start
using LeetCode

function smallest_rangeII(nums::Vector{Int}, k::Integer)
    sort!(nums)
    res = nums[end] - nums[1]
    for i in 2:length(nums)
        res = min(res, max(nums[end] - k, nums[i - 1] + k) - min(nums[1] + k, nums[i] - k))
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

