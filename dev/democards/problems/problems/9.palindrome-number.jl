# @lc code=start
using LeetCode

function is_palindrome(x::Int)::Bool
    if x < 0
        false
    else
        y = x
        y_reverse = 0
        while y > 0
            y, n = divrem(y, 10)
            y_reverse = y_reverse * 10 + n
        end
        x == y_reverse
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

