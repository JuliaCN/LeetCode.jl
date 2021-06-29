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

find_length718(nums1::Vector{Int}, nums2::Vector{Int}) = 
    longest_common_subsequence(nums1, nums2)
## @lc code=end
