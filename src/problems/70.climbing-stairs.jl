# ---
# title: 70. Climbing Stairs
# id: problem70
# author: zhwang
# date: 2022-01-16
# difficulty: Easy
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/climbing-stairs/description/>
# hidden: true
# ---
# 
# You are climbing a staircase. It takes `n` steps to reach the top.
# 
# Each time you can either climb `1` or `2` steps. In how many distinct ways can
# you climb to the top?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 2
#     Output: 2
#     Explanation: There are two ways to climb to the top.
#     1. 1 step + 1 step
#     2. 2 steps
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 3
#     Output: 3
#     Explanation: There are three ways to climb to the top.
#     1. 1 step + 1 step + 1 step
#     2. 1 step + 2 steps
#     3. 2 steps + 1 step
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 45`
# 
# 
## @lc code=start
using LeetCode

function climbing_stairs(n::Int)::Int
    n == 1 && return 1
    a, b = 1, 2
    for _ in 3:n
        a, b = b, a + b
    end
    return b
end

## @lc code=end
