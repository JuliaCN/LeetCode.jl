# @lc code=start
using LeetCode

function single_non_duplicate(nums::Vector{Int})
    i, j = 1, length(nums)
    while i < j
        mid = (i + j) >> 1
        if isodd(mid)
            nums[mid] == nums[mid + 1] ? (i = mid + 2) : (j = mid)
        else
            nums[mid] == nums[mid + 1] ? (j = mid - 1) : (i = mid + 1)
        end
    end
    return nums[i]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

