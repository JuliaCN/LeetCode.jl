# @lc code=start
using LeetCode

function add_digits(num::Int)::Int
    num <= 9 && return num
    return iszero(num % 9) ? 9 : num % 9
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

