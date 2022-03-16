# @lc code=start
using LeetCode

my_sqrt = isqrt
function mysqrt(x::Int)::Int
    x < 0 && throw(DomainError(x))
    left, right = 0, x
    while left <= right
        mid = left + ((right - left) >> 1)
        if mid^2 > x
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return right
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

