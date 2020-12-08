# ---
# title: 870. Advantage Shuffle
# id: problem870
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Greedy
# link: <https://leetcode.com/problems/advantage-shuffle/description/>
# hidden: true
# ---
# 
# Given two arrays `A` and `B` of equal size, the _advantage of`A` with respect
# to `B`_ is the number of indices `i` for which `A[i] > B[i]`.
# 
# Return **any** permutation of `A` that maximizes its advantage with respect to
# `B`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [2,7,11,15], B = [1,10,4,11]
#     Output: [2,11,7,15]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [12,24,8,32], B = [13,25,32,11]
#     Output: [24,32,8,12]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length = B.length <= 10000`
#   2. `0 <= A[i] <= 10^9`
#   3. `0 <= B[i] <= 10^9`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
