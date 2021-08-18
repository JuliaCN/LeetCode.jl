# ---
# title: 912. Sort an Array
# id: problem912
# author: Indigo
# date: 2021-07-12
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/sort-an-array/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums`, sort the array in ascending order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [5,2,3,1]
#     Output: [1,2,3,5]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [5,1,1,2,0,0]
#     Output: [0,0,1,1,2,5]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 50000`
#   * `-50000 <= nums[i] <= 50000`
# 
# 
## @lc code=start
using LeetCode

sort_array(nums::Vector{Int}) = sort!(nums)
## @lc code=end
