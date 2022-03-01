# ---
# title: 136. Single Number
# id: problem136
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: Hash Table, Bit Manipulation
# link: <https://leetcode.com/problems/single-number/description/>
# hidden: true
# ---
# 
# Given a **non-empty**  array of integers `nums`, every element appears _twice_
# except for one. Find that single one.
# 
# **Follow up:**  Could you implement a solution with a linear runtime
# complexity and without using extra memory?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,2,1]
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [4,1,2,1,2]
#     Output: 4
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 3 * 104`
#   * `-3 * 104 <= nums[i] <= 3 * 104`
#   * Each element in the array appears twice except for one element which appears only once.
# 
# 
## @lc code=start
using LeetCode

single_number_136(nums::Vector{Int}) = reduce(⊻, nums)
## @lc code=end
