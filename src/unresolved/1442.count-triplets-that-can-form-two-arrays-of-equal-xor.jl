# ---
# title: 1442. Count Triplets That Can Form Two Arrays of Equal XOR
# id: problem1442
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Math, Bit Manipulation
# link: <https://leetcode.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/description/>
# hidden: true
# ---
# 
# Given an array of integers `arr`.
# 
# We want to select three indices `i`, `j` and `k` where `(0 <= i < j <= k <
# arr.length)`.
# 
# Let's define `a` and `b` as follows:
# 
#   * `a = arr[i] ^ arr[i + 1] ^ ... ^ arr[j - 1]`
#   * `b = arr[j] ^ arr[j + 1] ^ ... ^ arr[k]`
# 
# Note that **^** denotes the **bitwise-xor** operation.
# 
# Return _the number of triplets_ (`i`, `j` and `k`) Where `a == b`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [2,3,1,6,7]
#     Output: 4
#     Explanation: The triplets are (0,1,2), (0,2,2), (2,3,4) and (2,4,4)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [1,1,1,1,1]
#     Output: 10
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: arr = [2,3]
#     Output: 0
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: arr = [1,3,5,7,9]
#     Output: 3
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: arr = [7,11,12,9,5,2,7,17,22]
#     Output: 8
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 300`
#   * `1 <= arr[i] <= 10^8`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
