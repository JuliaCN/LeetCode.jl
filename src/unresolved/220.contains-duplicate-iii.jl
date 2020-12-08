# ---
# title: 220. Contains Duplicate III
# id: problem220
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Sort, Ordered Map
# link: <https://leetcode.com/problems/contains-duplicate-iii/description/>
# hidden: true
# ---
# 
# Given an array of integers, find out whether there are two distinct indices
# _i_ and _j_ in the array such that the **absolute** difference between
# **nums[i]** and **nums[j]** is at most _t_ and the **absolute** difference
# between _i_ and _j_ is at most _k_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3,1], k = 3, t = 0
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,0,1,1], k = 1, t = 2
#     Output: true
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1,5,9,1,5,9], k = 2, t = 3
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 2 * 104`
#   * `-231 <= nums[i] <= 231 - 1`
#   * `0 <= k <= 104`
#   * `0 <= t <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
