# ---
# title: 189. Rotate Array
# id: problem189
# author: Indigo
# date: 2021-01-17
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/rotate-array/description/>
# hidden: true
# ---
# 
# Given an array, rotate the array to the right by _k_ steps, where  _k_  is
# non-negative.
# 
# **Follow up:**
# 
#   * Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
#   * Could you do it in-place with O(1) extra space?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3,4,5,6,7], k = 3
#     Output: [5,6,7,1,2,3,4]
#     Explanation:
#     rotate 1 steps to the right: [7,1,2,3,4,5,6]
#     rotate 2 steps to the right: [6,7,1,2,3,4,5]
#     rotate 3 steps to the right: [5,6,7,1,2,3,4]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [-1,-100,3,99], k = 2
#     Output: [3,99,-1,-100]
#     Explanation: 
#     rotate 1 steps to the right: [99,-1,-100,3]
#     rotate 2 steps to the right: [3,99,-1,-100]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 2 * 104`
#   * `-231 <= nums[i] <= 231 - 1`
#   * `0 <= k <= 105`
# 
# 
## @lc code=start
using LeetCode

function rotate_arr(nums::Vector{Int}, k::Int)
    k %= length(nums)
    reverse!(nums) 
    reverse!(@view nums[1:k])
    reverse!(@view nums[k+1:end])
    nums
end
## @lc code=end
