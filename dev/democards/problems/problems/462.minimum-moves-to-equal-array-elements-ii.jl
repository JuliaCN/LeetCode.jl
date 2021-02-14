# @lc code=start
using LeetCode

function min_moves2(nums::Vector{Int})
    median = partialsort!(nums, (length(nums) + 1) ÷ 2)
    return sum(abs, num - median for num in nums)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

