# @lc code=start
using LeetCode

function base_neg2(N::Int)
    cnt = 0
    res = ""
    while N > 0
        bit = (N & 1)
        N -= bit * (-1) ^ cnt
        N >>= 1
        cnt += 1
        res = string(bit) * res
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

