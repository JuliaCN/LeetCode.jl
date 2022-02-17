# @lc code=start
using LeetCode

function search_range(nums::Vector{Int}, target::Int)::Vector{Int}
    function get_left_border(target)
        left, right = 1, n
        while left <= right
            mid = (left + right) >> 1
            if nums[mid] >= target
                right = mid - 1
            else
                left = mid + 1
            end
        end
        return left
    end
    n = length(nums)
    left_border = get_left_border(target)
    (left_border > n || nums[left_border] != target) && return [-1, -1]
    return [left_border - 1, get_left_border(target + 1) - 2]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

