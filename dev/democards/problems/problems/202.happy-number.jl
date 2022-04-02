# @lc code=start
using LeetCode
function ishappy(n::Int)::Bool
    while n != 1
        n == 4 && return false ## all loops must contain 4
        n = sum(digits(n) .^ 2)
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

