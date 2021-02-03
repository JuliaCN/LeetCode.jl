# @lc code=start
using LeetCode

function min_moves_453(nums::Vector{Int})
    sum(nums) - minimum(nums) * length(nums)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

