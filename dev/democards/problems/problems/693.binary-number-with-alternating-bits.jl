# @lc code=start
using LeetCode

function has_alternating_bits(n::Int)::Bool
    a = (n >> 1) ⊻ n
    return a & (a + 1) == 0
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

