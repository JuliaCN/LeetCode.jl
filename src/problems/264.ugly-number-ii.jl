# ---
# title: 264. Ugly Number II
# id: problem264
# author: Indigo
# date: 2021-06-05
# difficulty: Medium
# categories: Math, Dynamic Programming, Heap
# link: <https://leetcode.com/problems/ugly-number-ii/description/>
# hidden: true
# ---
# 
# Write a program to find the `n`-th ugly number.
# 
# Ugly numbers are **positive numbers** whose prime factors only include `2, 3,
# 5`.
# 
# **Example:**
# 
#     
#     
#     Input: n = 10
#     Output: 12
#     Explanation:1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
# 
# **Note:**  
# 
#   1. `1` is typically treated as an ugly number.
#   2. `n` **does not exceed 1690**.
# 
# 
## @lc code=start
using LeetCode

function nth_ugly_number(n::Int)
    dp = Vector{Int}(undef, n)
    p2 = p3 = p5 = dp[1] = 1
    for i in 2:n
        nums = dp[p2] * 2, dp[p3] * 3, dp[p5] * 5
        dp[i] = minimum(nums)
        p2 += dp[i] == nums[1]
        p3 += dp[i] == nums[2]
        p5 += dp[i] == nums[3]        
    end
    return dp[n]
end
## @lc code=end
