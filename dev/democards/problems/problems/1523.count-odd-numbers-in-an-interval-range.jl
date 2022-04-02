# @lc code=start
using LeetCode

count_odd_numbers(low::Int, high::Int) = (high - low + 1 + (low & 1)) >> 1

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

