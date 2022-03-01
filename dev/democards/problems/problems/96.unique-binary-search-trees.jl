# @lc code=start
using LeetCode

num_of_trees(n::Int) = binomial(2 * n, n) - binomial(2 * n, n + 1)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

