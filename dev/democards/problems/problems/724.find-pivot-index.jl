# @lc code=start
using LeetCode

function pivot_index(nums::Vector{Int})
    if isempty(nums)
        return 0
    end
    total = sum(nums)
    left, right = 0, total
    for i in 1:length(nums)
        right -= nums[i]
        if left == right
            return i
        end
        left += nums[i]
    end
    return (left == nums[end]) ? length(nums) : 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

