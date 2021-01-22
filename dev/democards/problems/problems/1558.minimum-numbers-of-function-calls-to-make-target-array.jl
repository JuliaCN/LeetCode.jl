# @lc code=start
using LeetCode

function min_operations1558(nums::Vector{Int})
    m = maximum(nums)
    res = 0
    for num in nums
        while num > 0
            num &= (num - 1)
            res += 1
        end
    end
    while m > 1
        m >>= 1
        res += 1
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

