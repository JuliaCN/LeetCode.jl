# @lc code=start
using LeetCode

unique_paths(m::Int, n::Int) = binomial(m + n - 2, n - 1)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

