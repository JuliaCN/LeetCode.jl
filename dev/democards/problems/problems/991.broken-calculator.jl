# @lc code=start
using LeetCode

function broken_calc(x::Integer, y::Integer)
    cnt = 0
    while x < y
        isodd(y) ? (y += 1) : y >>= 1
        cnt += 1
    end
    return cnt + x - y
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

