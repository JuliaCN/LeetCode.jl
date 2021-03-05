# @lc code=start
using LeetCode

function count_bits(num::Int)
    res = fill(1, num)
    for i in 2:num
        res[i] = res[i >> 1] + (i & 1)
    end
    pushfirst!(res, 0)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

