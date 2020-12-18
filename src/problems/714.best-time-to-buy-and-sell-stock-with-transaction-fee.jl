# ---
# title: 714. Best Time to Buy and Sell Stock with Transaction Fee
# id: problem714
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Dynamic Programming, Greedy
# link: <https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/description/>
# hidden: true
# ---
# 
# Your are given an array of integers `prices`, for which the `i`-th element is
# the price of a given stock on day `i`; and a non-negative integer `fee`
# representing a transaction fee.
# 
# You may complete as many transactions as you like, but you need to pay the
# transaction fee for each transaction. You may not buy more than 1 share of a
# stock at a time (ie. you must sell the stock share before you buy again.)
# 
# Return the maximum profit you can make.
# 
# **Example 1:**  
# 
#     
#     
#     Input: prices = [1, 3, 2, 8, 4, 9], fee = 2
#     Output: 8
#     Explanation: The maximum profit can be achieved by:
#     
#     * Buying at prices[0] = 1
#     * Selling at prices[3] = 8
#     * Buying at prices[4] = 4
#     * Selling at prices[5] = 9
#     The total profit is ((8 - 1) - 2) + ((9 - 4) - 2) = 8.
#     
# 
# **Note:**
# 
# * `0 < prices.length <= 50000`.
# * `0 < prices[i] < 50000`.
# * `0 <= fee < 50000`.
# 
# 
## @lc code=start
using LeetCode
function max_profit714(price::Vector{Int}, fee::Int)::Int
    dp1, dp2 = 0, -50000
    for p in price
        dp1, dp2 = max(dp1, dp2 + p - fee), max(dp2, dp1 - p)
    end
    return dp1
end
## @lc code=end
