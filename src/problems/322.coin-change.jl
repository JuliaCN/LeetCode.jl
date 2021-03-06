# ---
# title: 322. Coin Change
# id: problem322
# author: Indigo
# date: 2021-06-10
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/coin-change/description/>
# hidden: true
# ---
# 
# You are given coins of different denominations and a total amount of money
# _amount_. Write a function to compute the fewest number of coins that you need
# to make up that amount. If that amount of money cannot be made up by any
# combination of the coins, return `-1`.
# 
# You may assume that you have an infinite number of each kind of coin.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: coins = [1,2,5], amount = 11
#     Output: 3
#     Explanation: 11 = 5 + 5 + 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: coins = [2], amount = 3
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: coins = [1], amount = 0
#     Output: 0
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: coins = [1], amount = 1
#     Output: 1
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: coins = [1], amount = 2
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= coins.length <= 12`
#   * `1 <= coins[i] <= 231 - 1`
#   * `0 <= amount <= 104`
# 
# 
## @lc code=start
using LeetCode

function coin_change(coins::Vector{Int}, amount::Int)
    res = OffsetArray(fill(amount + 1, 1 + amount), -1)
    res[0] = 0
    @inbounds for coin in coins, i in 0:(amount - coin)
        res[i + coin] = min(res[i + coin], res[i] + 1)
    end
    return res[end] == amount + 1 ? -1 : res[end]
end
## @lc code=end
