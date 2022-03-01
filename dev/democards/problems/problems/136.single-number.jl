# @lc code=start
using LeetCode

single_number_136(nums::Vector{Int}) = reduce(⊻, nums)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

