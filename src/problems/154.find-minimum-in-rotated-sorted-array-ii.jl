# ---
# title: 154. Find Minimum in Rotated Sorted Array II
# id: problem154
# author: Indigo
# date: 2021-01-19
# difficulty: Hard
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/description/>
# hidden: true
# ---
# 
# Suppose an array sorted in ascending order is rotated at some pivot unknown to
# you beforehand.
# 
# (i.e.,  `[0,1,2,4,5,6,7]` might become  `[4,5,6,7,0,1,2]`).
# 
# Find the minimum element.
# 
# The array may contain duplicates.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,3,5]
#     Output: 1
# 
# **Example 2:**
# 
#     
#     
#     Input: [2,2,2,0,1]
#     Output: 0
# 
# **Note:**
# 
#   * This is a follow up problem to [Find Minimum in Rotated Sorted Array](https://leetcode.comhttps://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/).
#   * Would allow duplicates affect the run-time complexity? How and why?
# 
# 
## @lc code=start
using LeetCode
function find_min_154(nums::Vector{Int})
    left, right = 1, length(nums)
    while left < right
        mid = (left + right) ÷ 2
        if nums[mid] > nums[right]
            left = mid + 1
        elseif nums[mid] < nums[right]
            right = mid
        else
            right -= 1
        end
    end
    nums[left]
end
## @lc code=end
