# ---
# title: 1052. Grumpy Bookstore Owner
# id: problem1052
# author: Qling
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
# `x` minutes straight, but can only use it once.
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
#     Input: customers = [1,0,1,2,1,1,7,5], grumpy = [0,1,0,1,0,1,0,1], x = 3
#     Output: 16
#     Explanation:  The bookstore owner keeps themselves not grumpy for the last 3 minutes. 
#     The maximum number of customers that can be satisfied = 1 + 1 + 1 + 1 + 7 + 5 = 16.
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= x <= customers.length == grumpy.length <= 20000`
#   * `0 <= customers[i] <= 1000`
#   * `0 <= grumpy[i] <= 1`
# 
# 
## @lc code=start
using LeetCode

function max_satisfied(customers::Vector{Int}, grumpy::Vector{Int}, x::Int)
    n = length(customers)
    satisfied = sum(customers[1:x])

    for i = (x+1):n
        (grumpy[i] == 0) && (satisfied += customers[i])
    end

    current_satisfied = satisfied
    left, right = 1, x + 1
    while right <= n
        (grumpy[left] == 1) && (current_satisfied -= customers[left])
        (grumpy[right] == 1) && (current_satisfied += customers[right])

        satisfied = max(current_satisfied, satisfied)
        left, right = left + 1, right + 1
    end

    satisfied
end

## @lc code=end
