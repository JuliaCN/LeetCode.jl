# ---
# title: 719. Find K-th Smallest Pair Distance
# id: problem719
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Array, Binary Search, Heap
# link: <https://leetcode.com/problems/find-k-th-smallest-pair-distance/description/>
# hidden: true
# ---
# 
# Given an integer array, return the k-th smallest **distance** among all the
# pairs. The distance of a pair (A, B) is defined as the absolute difference
# between A and B.
# 
# **Example 1:**  
# 
#     
#     
#     Input:
#     nums = [1,3,1]
#     k = 1
#     **Output: 0** 
#     Explanation:
#     Here are all the pairs:
#     (1,3) -> 2
#     (1,1) -> 0
#     (3,1) -> 2
#     Then the 1st smallest distance pair is (1,1), and its distance is 0.
#     
# 
# **Note:**  
# 
#   1. `2 <= len(nums) <= 10000`.
#   2. `0 <= nums[i] < 1000000`.
#   3. `1 <= k <= len(nums) * (len(nums) - 1) / 2`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
