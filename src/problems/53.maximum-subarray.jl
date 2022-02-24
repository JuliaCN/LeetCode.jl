# ---
# title: 53. Maximum Subarray
# id: problem53
# author: zhwang
# date: 2022-01-16
# difficulty: Easy
# categories: Array, Divide and Conquer, Dynamic Programming
# link: <https://leetcode.com/problems/maximum-subarray/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, find the contiguous subarray (containing at
# least one number) which has the largest sum and return _its sum_.
# 
# **Follow up:**  If you have figured out the `O(n)` solution, try coding
# another solution using the **divide and conquer** approach, which is more
# subtle.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
#     Output: 6
#     Explanation: [4,-1,2,1] has the largest sum = 6.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1]
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [0]
#     Output: 0
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [-1]
#     Output: -1
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums = [-2147483647]
#     Output: -2147483647
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 2 * 104`
#   * `-231 <= nums[i] <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function maximum_subarray(nums::Vector{Int})::Int
    pre, max_res = 0, nums[1]
    for num in nums
        pre = max(pre + num, num)
        max_res = max(pre, max_res)
    end
    return max_res
end

## @lc code=end
