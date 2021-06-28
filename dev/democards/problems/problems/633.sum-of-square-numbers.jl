# @lc code=start
using LeetCode

function judge_square_sum(n::Int)
    upper = isqrt(n)
    i = 0
    while i <= upper
        ss = i ^ 2 + upper ^ 2
        ss == n && return true
        ss > n ? (upper -= 1) : (i += 1)
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

