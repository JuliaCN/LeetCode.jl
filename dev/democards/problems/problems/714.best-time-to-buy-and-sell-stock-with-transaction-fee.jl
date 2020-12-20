# @lc code=start
using LeetCode
function max_profit714(price::Vector{Int}, fee::Int)::Int
    dp1, dp2 = 0, -50000
    for p in price
        dp1, dp2 = max(dp1, dp2 + p - fee), max(dp2, dp1 - p)
    end
    return dp1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

