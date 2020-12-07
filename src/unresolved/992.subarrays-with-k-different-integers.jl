# ---
# title: 992. Subarrays with K Different Integers
# id: problem992
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Hash Table, Two Pointers, Sliding Window
# link: <https://leetcode.com/problems/subarrays-with-k-different-integers/description/>
# hidden: true
# ---
# 
# Given an array `A` of positive integers, call a (contiguous, not necessarily
# distinct) subarray of `A` _good_ if the number of different integers in that
# subarray is exactly `K`.
# 
# (For example, `[1,2,3,1,2]` has `3` different integers: `1`, `2`, and `3`.)
# 
# Return the number of good subarrays of `A`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1,2,1,2,3], K = 2
#     Output: 7
#     Explanation: Subarrays formed with exactly 2 different integers: [1,2], [2,1], [1,2], [2,3], [1,2,1], [2,1,2], [1,2,1,2].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [1,2,1,3,4], K = 3
#     Output: 3
#     Explanation: Subarrays formed with exactly 3 different integers: [1,2,1,3], [2,1,3], [1,3,4].
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 20000`
#   2. `1 <= A[i] <= A.length`
#   3. `1 <= K <= A.length`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
