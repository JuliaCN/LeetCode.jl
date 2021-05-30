# ---
# title: 41. First Missing Positive
# id: problem41
# author: Indigo
# date: 2021-03-10
# difficulty: Hard
# categories: Array
# link: <https://leetcode.com/problems/first-missing-positive/description/>
# hidden: true
# ---
# 
# Given an unsorted integer array `nums`, find the smallest missing positive
# integer.
# 
# **Follow up:**  Could you implement an algorithm that runs in `O(n)` time and
# uses constant extra space.?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,0]
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [3,4,-1,1]
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [7,8,9,11,12]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 300`
#   * `-231 <= nums[i] <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function first_missing_positive(nums::Vector{Int})
    len = length(nums)
    for idx in 1:len
        while nums[idx] <= len && nums[idx] > 0 && nums[nums[idx]] != nums[idx]
            num = nums[idx]
            nums[idx], nums[num] = nums[num], nums[idx]
        end
    end
    for i in 1:len
        (nums[i] != i) && return i
    end
end
## @lc code=end
