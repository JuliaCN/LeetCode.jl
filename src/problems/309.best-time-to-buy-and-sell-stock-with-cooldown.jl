# ---
# title: 309. Best Time to Buy and Sell Stock with Cooldown
# id: problem309
# author: Indigo
# date: 2021-06-10
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/description/>
# hidden: true
# ---
# 
# Say you have an array for which the _i_ th element is the price of a given
# stock on day _i_.
# 
# Design an algorithm to find the maximum profit. You may complete as many
# transactions as you like (ie, buy one and sell one share of the stock multiple
# times) with the following restrictions:
# 
#   * You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
#   * After you sell your stock, you cannot buy stock on next day. (ie, cooldown 1 day)
# 
# **Example:**
# 
#     
#     
#     Input: [1,2,3,0,2]
#     Output: 3 
#     Explanation: transactions = [buy, sell, cooldown, buy, sell]
#     
# 
# 
## @lc code=start
using LeetCode

function max_profit_309(prices)
    isempty(prices) && return 0
    ## f0: this day I have a stock
    ## f1: this day I sell a stock
    ## f2: this day I can buy the stock
    f0, f1, f2 = -first(prices), 0, 0
    for price in @view(prices[2:end])
        f0, f1, f2 = max(f2 - price, f0), f0 + price, max(f1, f2)        
    end
    return max(f1, f2)
end
## @lc code=end
