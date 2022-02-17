# ---
# title: 121. Best Time to Buy and Sell Stock
# id: problem121
# author: zhwang
# date: 2022-01-17
# difficulty: Easy
# categories: Array, Dynamic Programming
# link: <https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/>
# hidden: true
# ---
# 
# Say you have an array for which the _i_ th element is the price of a given
# stock on day _i_.
# 
# If you were only permitted to complete at most one transaction (i.e., buy one
# and sell one share of the stock), design an algorithm to find the maximum
# profit.
# 
# Note that you cannot sell a stock before you buy one.
# 
# **Example 1:**
# 
#     
#     
#     Input: [7,1,5,3,6,4]
#     Output: 5
#     Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
#                  Not 7-1 = 6, as selling price needs to be larger than buying price.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [7,6,4,3,1]
#     Output: 0
#     Explanation: In this case, no transaction is done, i.e. max profit = 0.
#     
# 
# 
## @lc code=start
using LeetCode

function max_profit_121(prices::Vector{Int})::Int
    min_cost, profit = prices[1], 0
    for price in @view prices[2:end]
        profit = max(profit, price - min_cost)
        min_cost = min(min_cost, price)
    end
    return profit
end

## @lc code=end
