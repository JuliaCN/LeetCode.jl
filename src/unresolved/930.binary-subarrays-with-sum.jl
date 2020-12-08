# ---
# title: 930. Binary Subarrays With Sum
# id: problem930
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Hash Table, Two Pointers
# link: <https://leetcode.com/problems/binary-subarrays-with-sum/description/>
# hidden: true
# ---
# 
# In an array `A` of `0`s and `1`s, how many **non-empty** subarrays have sum
# `S`?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1,0,1,0,1], S = 2
#     Output: 4
#     Explanation:
#     The 4 subarrays are bolded below:
#     [ **1,0,1** ,0,1]
#     [ **1,0,1,0** ,1]
#     [1, **0,1,0,1** ]
#     [1,0, **1,0,1** ]
#     
# 
# 
# 
# **Note:**
# 
#   1. `A.length <= 30000`
#   2. `0 <= S <= A.length`
#   3. `A[i]` is either `0` or `1`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
