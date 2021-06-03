# ---
# title: 137. Single Number II
# id: problem137
# author: Indigo
# date: 2021-06-03
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/single-number-ii/description/>
# hidden: true
# ---
# 
# Given an integer array `nums` where every element appears **three times**
# except for one, which appears **exactly once**. _Find the single element and
# return it_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,2,3,2]
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,1,0,1,0,1,99]
#     Output: 99
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 3 * 104`
#   * `-231 <= nums[i] <= 231 - 1`
#   * Each element in `nums` appears exactly **three times** except for one element which appears **once**.
# 
# 
# 
# **Follow up:**  Your algorithm should have a linear runtime complexity. Could
# you implement it without using extra memory?
# 
# 
## @lc code=start
using LeetCode

function single_number(nums::Vector{Int})::Int
    a, b = 0, 0
    for num in nums
        b = (b ⊻ num) & ~a
        a = (a ⊻ num) & ~b
    end
    return b
end
## @lc code=end
