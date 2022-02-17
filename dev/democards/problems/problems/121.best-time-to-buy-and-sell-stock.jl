# @lc code=start
using LeetCode

function max_profit_121(prices::Vector{Int})::Int
    min_cost, profit = prices[1], 0
    for price in @view prices[2:end]
        profit = max(profit, price - min_cost)
        min_cost = min(min_cost, price)
    end
    return profit
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

