# @lc code=start
using LeetCode

running_sum(arr::Vector{<:Number}) = cumsum!(arr, arr)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

