# @lc code=start
using LeetCode

function my_pow(x::Float64, n::Int)::Float64
    n == 0 && return 1
    if n < 0
        x, n = 1 / x, -n
    end
    res, extra = x, 1
    while n > 1
        n & 1 == 1 && (extra *= res)
        res *= res
        n >>= 1
    end
    return res * extra
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

