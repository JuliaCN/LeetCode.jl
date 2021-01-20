# @lc code=start
using LeetCode

function max_product(nums::Vector{Int})
    maxF = minF = res = nums[1]
    for num in @view nums[2:end]
        maxF, minF = max(maxF * num, minF * num, num), min(minF * num, maxF * num, num)
        res = max(res, maxF)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

