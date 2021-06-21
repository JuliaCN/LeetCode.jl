# @lc code=start
using LeetCode

function number_of_arithmetic_slices(nums::Vector{Int})
    dp, res = 0, 0
    for i in 3:length(nums)
        if nums[i] + nums[i - 2] == (nums[i - 1] << 1)
            res += (dp += 1)
        else
            dp = 0
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

