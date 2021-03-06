# ---
# title: 629. K Inverse Pairs Array
# id: problem629
# author: Indigo
# date: 2021-06-22
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/k-inverse-pairs-array/description/>
# hidden: true
# ---
# 
# Given two integers `n` and `k`, find how many different arrays consist of
# numbers from `1` to `n` such that there are exactly `k` inverse pairs.
# 
# We define an inverse pair as following: For `ith` and `jth` element in the
# array, if `i` < `j` and `a[i]` > `a[j]` then it's an inverse pair; Otherwise,
# it's not.
# 
# Since the answer may be very large, the answer should be modulo 109 \+ 7.
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 3, k = 0
#     Output: 1
#     Explanation: 
#     Only the array [1,2,3] which consists of numbers from 1 to 3 has exactly 0 inverse pair.
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 3, k = 1
#     Output: 2
#     Explanation: 
#     The array [1,3,2] and [2,1,3] have exactly 1 inverse pair.
#     
# 
# 
# 
# **Note:**
# 
#   1. The integer `n` is in the range [1, 1000] and `k` is in the range [0, 1000].
# 
# 
# 
# 
## @lc code=start
using LeetCode

function k_inverse_pairs(n::Int, k::Int)
    dp = OffsetArray(fill(0, n + 1, k + 1), -1, -1)
    dp[:, 0] .= 1
    m = 1000000007
    @inbounds for i in 1:n, j in 1:min(k, i * (i - 1) ÷ 2)
        val = dp[i - 1, j] - ((j - i) >= 0 ? dp[i - 1, j - i] : 0)
        dp[i, j] = (dp[i, j - 1] + val) % m
    end
    return (dp[n, k] + m) % m
end
## @lc code=end
