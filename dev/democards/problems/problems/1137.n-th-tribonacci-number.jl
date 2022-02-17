# @lc code=start
using LeetCode

function tribonacci_1137(n::Int)::Int
    n <= 1 && return n
    a, b, c = 0, 1, 1
    for _ in 1:(n - 2)
        a, b, c = b, c, a + b + c
    end
    return c
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

