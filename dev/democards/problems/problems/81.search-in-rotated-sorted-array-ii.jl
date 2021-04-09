# @lc code=start
using LeetCode

function search(nums::Vector{Int}, target::Int)::Bool
    left, right = 1, length(nums)
    while left <= right
        mid = (left + right) >> 1
        (nums[mid] == target) && return true
        if nums[mid] == nums[left]
            left += 1
        elseif nums[mid] <= nums[right]
            if nums[mid] < target <= nums[right]
                left = mid + 1
            else
                right = mid - 1
            end
        else
            if nums[left] <= target < nums[mid]
                right = mid - 1
            else
                left = mid + 1
            end
        end
    end

    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

