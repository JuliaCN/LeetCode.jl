# @lc code=start
using LeetCode

function is_power_of_two(n::Int)
    return n > 0 && (n & (n - 1)) == 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

