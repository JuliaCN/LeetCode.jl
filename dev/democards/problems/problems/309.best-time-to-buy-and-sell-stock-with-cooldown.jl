# @lc code=start
using LeetCode

function max_profit_309(prices)
    isempty(prices) && return 0
    # f0: this day I have a stock
    # f1: this day I sell a stock
    # f2: this day I can buy the stock
    f0, f1, f2 = -first(prices), 0, 0
    for price in @view(prices[2:end])
        f0, f1, f2 = max(f2 - price, f0), f0 + price, max(f1, f2)
    end
    return max(f1, f2)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

