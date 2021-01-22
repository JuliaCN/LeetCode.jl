# @lc code=start
using LeetCode

function min_operations_1551(n::Int)
    return 2 * sum(1 : (n - 1) ÷ 2) + (n & 1 == 0) * (n ÷ 2)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

