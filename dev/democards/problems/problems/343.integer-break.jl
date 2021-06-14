# @lc code=start
using LeetCode

function integer_break(n::Int)
    n <= 3 && return n - 1
    a, b = n ÷ 3, n % 3
    b == 0 && return 3 ^ a
    b == 1 && return 3 ^ (a - 1) * 4
    return 3 ^ a * 2
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

