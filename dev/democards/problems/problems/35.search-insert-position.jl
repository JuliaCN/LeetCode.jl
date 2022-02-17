# @lc code=start
using LeetCode

function search_insert(nums::Vector{Int}, target::Int)::Int
    left, right = 1, length(nums)
    while left <= right
        mid = left + ((right - left) >> 1)
        if nums[mid] >= target
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

