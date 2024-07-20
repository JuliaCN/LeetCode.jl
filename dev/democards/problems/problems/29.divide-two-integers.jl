# @lc code=start
using LeetCode

function divide(dividend::Int, divisor::Int)::Int
    sign = (dividend < 0) ⊻ (divisor < 0)
    dividend, divisor = abs(dividend), abs(divisor)
    result = 0
    while dividend >= divisor
        shift = 0
        while dividend >= (divisor << shift)
            shift += 1
        end
        dividend -= divisor << (shift - 1)
        result += 1 << (shift - 1)
    end
    return sign ? -result : result
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

