# @lc code=start
using LeetCode

function find_min_153(nums::Vector{Int})
    left, right = 1, length(nums)
    while left < right
        mid = (left + right) ÷ 2
        (nums[mid] < nums[right]) ? (right = mid) : (left = mid + 1)
    end
    nums[left]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

