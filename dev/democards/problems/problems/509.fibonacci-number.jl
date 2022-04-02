# @lc code=start
using LeetCode

function fib(n::Int)::Int
    n <= 1 && return n
    pre, cur = 0, 1
    for _ in 2:n
        pre, cur = cur, pre + cur
    end
    return cur
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

