# ---
# title: 324. Wiggle Sort II
# id: problem324
# author: Indigo
# date: 2021-06-10
# difficulty: Medium
# categories: Sort
# link: <https://leetcode.com/problems/wiggle-sort-ii/description/>
# hidden: true
# ---
# 
# Given an unsorted array `nums`, reorder it such that `nums[0] < nums[1] >
# nums[2] < nums[3]...`.
# 
# **Example 1:**
# 
#     
#     
#     Input:nums = [1, 5, 1, 1, 6, 4]
#     Output: One possible answer is [1, 4, 1, 5, 1, 6].
# 
# **Example 2:**
# 
#     
#     
#     Input:nums = [1, 3, 2, 2, 3, 1]
#     Output: One possible answer is [2, 3, 1, 3, 1, 2].
# 
# **Note:**  
# You may assume all input has valid answer.
# 
# **Follow Up:**  
# Can you do it in O(n) time and/or in-place with O(1) extra space?
# 
# 
## @lc code=start
using LeetCode

function wiggle_sort!(nums::Vector{Int})
    len = length(nums)
    md = len ÷ 2
    partialsort!(nums, md)
    nums[1], nums[md] = nums[md], nums[1]
    i, j = 2, len
    iseven(len) && (j -= 1)
    while i <= j
        nums[i], nums[j] = nums[j], nums[i]
        i += 2
        j -= 2
    end
    return nums
end
## @lc code=end
