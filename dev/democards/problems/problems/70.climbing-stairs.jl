# @lc code=start
using LeetCode

function climbing_stairs(n::Int)::Int
    n == 1 && return 1
    a, b = 1, 2
    for _ in 3:n
        a, b = b, a + b
    end
    return b
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

