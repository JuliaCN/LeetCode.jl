# ---
# title: 35. Search Insert Position
# id: problem35
# author: zhwang
# date: 2022-02-12
# difficulty: Easy
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/search-insert-position/description/>
# hidden: true
# ---
# 
# Given a sorted array of distinct integers and a target value, return the index
# if the target is found. If not, return the index where it would be if it were
# inserted in order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,3,5,6], target = 5
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,3,5,6], target = 2
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1,3,5,6], target = 7
#     Output: 4
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [1,3,5,6], target = 0
#     Output: 0
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums = [1], target = 0
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 104`
#   * `-104 <= nums[i] <= 104`
#   * `nums` contains **distinct** values sorted in **ascending** order.
#   * `-104 <= target <= 104`
# 
# 
## @lc code=start
using LeetCode

function search_insert(nums::Vector{Int}, target::Int)::Int
    left, right = 1, length(nums)
    while left <= right
        mid = left + ((right - left) >> 1)
        if nums[mid] >= target
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left - 1
end
## @lc code=end
