# @lc code=start
using LeetCode

function sort_colors!(nums::Vector{Int})
    left = 1
    for i in eachindex(nums)
        if nums[i] == 0
            nums[i], nums[left] = nums[left], nums[i]
            left += 1
        end
    end
    for i in (left + 1):length(nums)
        if nums[i] == 1
            nums[i], nums[left] = nums[left], nums[i]
            left += 1
        end
    end
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

