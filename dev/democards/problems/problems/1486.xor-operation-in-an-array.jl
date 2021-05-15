# @lc code=start
using LeetCode

function xor_operation(n::Int, start::Int)
    res = 0
    for _ in 1:n
        res ⊻= start
        start += 2
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

