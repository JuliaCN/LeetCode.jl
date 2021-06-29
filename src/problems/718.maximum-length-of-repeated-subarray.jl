# ---
# title: 718. Maximum Length of Repeated Subarray
# id: problem718
# author: Indigo
# date: 2021-06-29
# difficulty: Medium
# categories: Array, Hash Table, Binary Search, Dynamic Programming
# link: <https://leetcode.com/problems/maximum-length-of-repeated-subarray/description/>
# hidden: true
# ---
# 
# Given two integer arrays `A` and `B`, return the maximum length of an subarray
# that appears in both arrays.
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     A: [1,2,3,2,1]
#     B: [3,2,1,4,7]
#     Output: 3
#     Explanation: 
#     The repeated subarray with maximum length is [3, 2, 1].
#     
# 
# 
# 
# **Note:**
# 
#   1. 1 <= len(A), len(B) <= 1000
#   2. 0 <= A[i], B[i] < 100
# 
# 
# 
# 
## @lc code=start
using LeetCode

function longest_common_substring(itr1, itr2)
    m, n = length(itr1) + 1, length(itr2) + 1
    dp = fill(0, m, n)
    for i in 2: m, j in 2: n
        (itr1[i - 1] == itr2[j - 1]) && (dp[i, j] = dp[i - 1, j - 1] + 1)
    end
    return maximum(dp[m, n])
end

find_length(nums1::Vector{Int}, nums2::Vector{Int}) = 
    longest_common_substring(nums1, nums2)
## @lc code=end
