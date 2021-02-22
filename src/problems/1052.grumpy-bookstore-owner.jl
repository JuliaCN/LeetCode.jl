# ---
# title: 1052. Grumpy Bookstore Owner
# id: problem1052
# author: Indigo
# date: 2021-02-23
# difficulty: Medium
# categories: Array, Sliding Window
# link: <https://leetcode.com/problems/grumpy-bookstore-owner/description/>
# hidden: true
# ---
# 
# Today, the bookstore owner has a store open for `customers.length` minutes.
# Every minute, some number of customers (`customers[i]`) enter the store, and
# all those customers leave after the end of that minute.
# 
# On some minutes, the bookstore owner is grumpy.  If the bookstore owner is
# grumpy on the i-th minute, `grumpy[i] = 1`, otherwise `grumpy[i] = 0`.  When
# the bookstore owner is grumpy, the customers of that minute are not satisfied,
# otherwise they are satisfied.
# 
# The bookstore owner knows a secret technique to keep themselves not grumpy for
# `X` minutes straight, but can only use it once.
# 
# Return the maximum number of customers that can be satisfied throughout the
# day.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: customers = [1,0,1,2,1,1,7,5], grumpy = [0,1,0,1,0,1,0,1], X = 3
#     Output: 16
#     Explanation:  The bookstore owner keeps themselves not grumpy for the last 3 minutes. 
#     The maximum number of customers that can be satisfied = 1 + 1 + 1 + 1 + 7 + 5 = 16.
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= X <= customers.length == grumpy.length <= 20000`
#   * `0 <= customers[i] <= 1000`
#   * `0 <= grumpy[i] <= 1`
# 
# 
## @lc code=start
using LeetCode

function max_satisfied(customers::Vector{Int}, grumpy::Vector{Int}, k::Int)
    k ≥ length(grumpy) && return sum(customers)
    total, len = 0, length(grumpy)
    for i in eachindex(grumpy)
        total += (1 - grumpy[i]) * customers[i]
    end
    window_sum = sum(@view(customers[1:k])' * @view(grumpy[1:k]))
    i, j, maxn = 1, k, window_sum
    while j + 1 ≤ len
        window_sum -= grumpy[i] * customers[i]
        i += 1
        j += 1
        window_sum += grumpy[j] * customers[j]
        maxn = max(maxn, window_sum)
    end
    total + maxn
end
## @lc code=end
