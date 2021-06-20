# @lc code=start
using LeetCode

function integer_replacement(n::Int)
    res = 0
    while n != 1
        if iseven(n)
            n >>= 1
        elseif n & 2 == 0 || n == 3
            n -= 1
        else
            n += 1
        end
        res += 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

