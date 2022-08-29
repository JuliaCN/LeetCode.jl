# ---
# title: 33. Search in Rotated Sorted Array
# id: problem33
# author: zhwang
# date: 2022-03-18
# difficulty: Medium
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/search-in-rotated-sorted-array/description/>
# hidden: true
# ---
# 
# You are given an integer array `nums` sorted in ascending order, and an
# integer `target`.
# 
# Suppose that `nums` is rotated at some pivot unknown to you beforehand (i.e.,
# `[0,1,2,4,5,6,7]` might become `[4,5,6,7,0,1,2]`).
# 
# _If`target` is found in the array return its index, otherwise, return `-1`._
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [4,5,6,7,0,1,2], target = 0
#     Output: 4
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [4,5,6,7,0,1,2], target = 3
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1], target = 0
#     Output: -1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 5000`
#   * `-10^4 <= nums[i] <= 10^4`
#   * All values of `nums` are **unique**.
#   * `nums` is guranteed to be rotated at some pivot.
#   * `-10^4 <= target <= 10^4`
# 
# 
## @lc code=start
using LeetCode

function search_left_border(left::Int, right::Int, key::Function)
    ## e.g. search_left_border(1, 10, >(3)) | returns 4
    while left <= right
        mid = left + (right - left) >> 1
        if key(mid) ## lies in the right part
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left
end

function search_in_rotated_array(nums::Vector{Int}, target::Int)::Int
    n, rightmost = length(nums), last(nums)
    if target > rightmost ## lies in the right side
        pos = search_left_border(1, n, i -> (nums[i] <= rightmost || nums[i] >= target))
        return pos <= n && nums[pos] == target ? pos - 1 : -1
    else
        pos = search_left_border(1, n, i -> (target <= nums[i] <= rightmost))
        return pos <= n && nums[pos] == target ? pos - 1 : -1
    end
end
## @lc code=end
