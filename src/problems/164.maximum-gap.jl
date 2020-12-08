# ---
# title: 164. Maximum Gap
# id: problem164
# author: AquaIndigo
# date: 2020-11-26
# difficulty: Hard
# categories: Sort
# link: <https://leetcode.com/problems/maximum-gap/description/>
# hidden: true
# ---
# 
# Given an unsorted array, find the maximum difference between the successive
# elements in its sorted form.
# 
# Return 0 if the array contains less than 2 elements.
# 
# **Example 1:**
# 
#     
#     
#     Input: [3,6,9,1]
#     Output: 3
#     Explanation: The sorted form of the array is [1,3,6,9], either
#                  (3,6) or (6,9) has the maximum difference 3.
# 
# **Example 2:**
# 
#     
#     
#     Input: [10]
#     Output: 0
#     Explanation: The array contains less than 2 elements, therefore return 0.
# 
# **Note:**
# 
#   * You may assume all elements in the array are non-negative integers and fit in the 32-bit signed integer range.
#   * Try to solve it in linear time/space.
# 
# 
## @lc code=start
using LeetCode

function maximum_gap(nums::Vector{Int})::Int
    sort!(nums)
    return length(nums) < 2 ? 0 : maximum(@view(nums[2:end]) - @view(nums[1:(end - 1)]))
end
## @lc code=end
