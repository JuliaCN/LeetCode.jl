# @lc code=start
using LeetCode

function product_except_self(nums::Vector{Int})
    n = length(nums)
    left = right = 1
    res = fill(1, n)
    @inbounds for i in 1:n
        res[i] *= left
        left *= nums[i]
        res[n - i + 1] *= right
        right *= nums[n - i + 1]
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

