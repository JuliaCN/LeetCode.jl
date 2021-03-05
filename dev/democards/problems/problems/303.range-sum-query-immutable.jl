# @lc code=start
using LeetCode

struct NumArray
    sums::Vector
    function NumArray(nums::Vector)
        n = length(nums)
        sums = nums[:]

        for i = 2:n
            sums[i] = sums[i-1] + nums[i]
        end
        new(sums)
    end
end

function sum_range(nums::NumArray, i::Int, j::Int)
    i == j && return 0
    i == 1 && return nums.sums[j]
    return nums.sums[j] - nums.sums[i-1]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

