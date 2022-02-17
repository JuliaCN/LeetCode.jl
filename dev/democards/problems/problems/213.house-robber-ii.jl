# @lc code=start
using LeetCode

function rob_213(nums::Vector{Int})::Int
    length(nums) <= 3 && return max(nums...)
    # start from house 1
    a, b1 = nums[1], nums[1] + nums[3]
    for num in @view nums[4:(end - 1)]
        a, b1 = b1, max(b1, a + num)
    end
    # start from house 2
    a, b2 = nums[2], max(nums[2], nums[3])
    for num in @view nums[4:end]
        a, b2 = b2, max(b2, a + num)
    end
    return max(b1, b2)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

