# @lc code=start
using LeetCode

function is_monotonic(A::Vector{Int})
    return issorted(A) || issorted(A; rev = true)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

