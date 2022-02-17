# @lc code=start
using LeetCode

pascals_triangle(numRows::Int) = [[binomial(k, i) for i in 0:k] for k in 0:(numRows - 1)]
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

