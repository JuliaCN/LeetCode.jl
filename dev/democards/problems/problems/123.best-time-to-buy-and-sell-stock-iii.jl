# @lc code=start
using LeetCode

function max_profit_iii(prices::Vector{Int})::Int
    sell1 = sell2 = 0
    buy2 = buy1 = -prices[1]
    for i in 2:length(prices)
        sell2 = max(buy2 + prices[i], sell2)
        buy2 = max(sell1 - prices[i], buy2)
        sell1 = max(buy1 + prices[i], sell1)
        buy1 = max(buy1, -prices[i])
    end
    sell2
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

