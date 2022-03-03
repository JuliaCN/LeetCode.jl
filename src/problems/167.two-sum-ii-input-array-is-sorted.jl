# ---
# title: 167. Two Sum II - Input array is sorted
# id: problem167
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Array, Two Pointers, Binary Search
# link: <https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/>
# hidden: true
# ---
# 
# Given an array of integers that is already **_sorted in ascending order_** ,
# find two numbers such that they add up to a specific target number.
# 
# The function twoSum should return indices of the two numbers such that they
# add up to the target, where index1 must be less than index2.
# 
# **Note:**
# 
#   * Your returned answers (both index1 and index2) are not zero-based.
#   * You may assume that each input would have _exactly_ one solution and you may not use the _same_ element twice.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: numbers = [2,7,11,15], target = 9
#     Output: [1,2]
#     Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: numbers = [2,3,4], target = 6
#     Output: [1,3]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: numbers = [-1,0], target = -1
#     Output: [1,2]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= nums.length <= 3 * 104`
#   * `-1000 <= nums[i] <= 1000`
#   * `nums` is sorted in **increasing order**.
#   * `-1000 <= target <= 1000`
# 
# 
## @lc code=start
using LeetCode

## using double pointers
function two_sum_167(numbers::Vector{Int}, target::Int)::Vector{Int}
    left, right = 1, length(numbers)
    while left < right
        num = numbers[left] + numbers[right]
        if num > target
            right -= 1
        elseif num < target
            left += 1
        else
            return [left, right]
        end
    end
    [-1, -1]
end

## @lc code=end
