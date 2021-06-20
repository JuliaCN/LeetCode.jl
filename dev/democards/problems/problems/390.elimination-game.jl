# @lc code=start
using LeetCode

last_remaining(n::Int)::Int = n == 1 ? 1 : 2 * (n ÷ 2 + 1 - last_remaining(n ÷ 2))

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

