# @lc code=start
using LeetCode

function search_left_border(left::Int, right::Int, key::Function)
    # e.g. search_left_border(1, 10, >(3)) | returns 4
    while left <= right
        mid = left + (right - left) >> 1
        if key(mid) ## lies in the right part
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left
end

function search_in_rotated_array(nums::Vector{Int}, target::Int)::Int
    n, rightmost = length(nums), last(nums)
    if target > rightmost ## lies in the right side
        pos = search_left_border(1, n, i -> (nums[i] <= rightmost || nums[i] >= target))
        return pos <= n && nums[pos] == target ? pos - 1 : -1
    else
        pos = search_left_border(1, n, i -> (target <= nums[i] <= rightmost))
        return pos <= n && nums[pos] == target ? pos - 1 : -1
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

