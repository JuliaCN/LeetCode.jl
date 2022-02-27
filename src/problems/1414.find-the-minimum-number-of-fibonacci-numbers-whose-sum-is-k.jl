# ---
# title: 1414. Find the Minimum Number of Fibonacci Numbers Whose Sum Is K
# id: problem1414
# author: Indigo
# date: 2022-2-18
# difficulty: Medium
# categories: Array, Greedy
# link: <https://leetcode.com/problems/find-the-minimum-number-of-fibonacci-numbers-whose-sum-is-k/description/>
# hidden: true
# ---
# 
# Given an integer `k`, _return the minimum number of Fibonacci numbers whose
# sum is equal to_`k`. The same Fibonacci number can be used multiple times.
# 
# The Fibonacci numbers are defined as:
# 
#   * `F1 = 1`
#   * `F2 = 1`
#   * `Fn = Fn-1 + Fn-2` for `n > 2.`
# 
# It is guaranteed that for the given constraints we can always find such
# Fibonacci numbers that sum up to `k`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: k = 7
#     Output: 2 
#     Explanation: The Fibonacci numbers are: 1, 1, 2, 3, 5, 8, 13, ... 
#     For k = 7 we can use 2 + 5 = 7.
# 
# **Example 2:**
# 
#     
#     
#     Input: k = 10
#     Output: 2 
#     Explanation: For k = 10 we can use 2 + 8 = 10.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: k = 19
#     Output: 3 
#     Explanation: For k = 19 we can use 1 + 5 + 13 = 19.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= k <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function find_min_fibonacci_numbers(k::Int)
    fibs = [0, 1, 1]
    while fibs[end] <= k
        push!(fibs, fibs[end] + fibs[end - 1])
    end
    """
    If we need 2 or more fib_i's,
    we can always use fib_{i+1} and fib_{i-2} to replace them:
    2fib_i = fib_i + fib_{i-1} + fib_{i-2} = fib_{i+1} + fib_{i-2}.

    So greedy algorithm can be performed.
    """
    pop!(fibs)
    res = 0
    idx = length(fibs) + 1
    while k != 0
        idx -= 1
        k >= fibs[idx] || continue
        k -= fibs[idx]
        res += 1
    end
    return res
end
## @lc code=end
