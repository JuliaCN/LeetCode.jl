# @lc code=start
using LeetCode

function hamming_distance(x::Int, y::Int)
    res = 0
    while x != 0 || y != 0
        res += (x & 1) ⊻ (y & 1)
        x >>= 1
        y >>= 1
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

