# @lc code=start
using LeetCode

# Dynamic Programming
function min_cost_climbing_stairs(cost::Vector{Int})::Int
    first, second = cost[1], cost[2]
    for c in @view cost[3:end]
        first, second = second, min(first, second) + c
    end
    return min(first, second)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

