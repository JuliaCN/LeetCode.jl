# @lc code=start
using LeetCode

function bitwise_complement(N::Int)
    res = 0
    for i in 0:31
        if N > 0
            res += ((1 - (N & 1)) << i)
            N >>= 1
        else
            return res
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

