# ---
# title: 81. Search in Rotated Sorted Array II
# id: problem81
# author: Qling
# date: 2021-04-09
# difficulty: Medium
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/search-in-rotated-sorted-array-ii/description/>
# hidden: true
# ---
# 
# Suppose an array sorted in ascending order is rotated at some pivot unknown to
# you beforehand.
# 
# (i.e., `[0,0,1,2,2,5,6]` might become `[2,5,6,0,0,1,2]`).
# 
# You are given a target value to search. If found in the array return `true`,
# otherwise return `false`.
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,5,6,0,0,1,2], target = 0
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2,5,6,0,0,1,2], target = 3
#     Output: false
# 
# **Follow up:**
# 
#   * This is a follow up problem to [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/description/), where `nums` may contain duplicates.
#   * Would this affect the run-time complexity? How and why?
# 
# 
## @lc code=start
using LeetCode

function search_rotate(nums::Vector{Int}, target::Int)::Bool
    left, right = 1, length(nums)
    while left <= right
        mid = (left + right) >> 1
        (nums[mid] == target) && return true
        if nums[mid] == nums[left]
            left += 1
        elseif nums[mid] <= nums[right]
            if nums[mid] < target <= nums[right]
                left = mid + 1
            else
                right = mid - 1
            end
        else
            if nums[left] <= target < nums[mid]
                right = mid - 1
            else
                left = mid + 1
            end
        end
    end

    return false
end
## @lc code=end

