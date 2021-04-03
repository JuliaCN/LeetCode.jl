# @lc code=start
using LeetCode

function reverse_bit(n::UInt32)::UInt32
    ret, power = 0, 31
    while n != 0
        ret += (n & 1) << power
        power -= 1
        n = n >> 1
    end

    return ret
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

