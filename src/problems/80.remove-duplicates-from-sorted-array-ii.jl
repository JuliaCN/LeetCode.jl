# ---
# title: 80. Remove Duplicates from Sorted Array II
# id: problem80
# author: Qling
# date: 2021-04-06
# difficulty: Medium
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/>
# hidden: true
# ---
# 
# Given a sorted array _nums_ , remove the duplicates [**in-
# place**](https://en.wikipedia.org/wiki/In-place_algorithm) such that
# duplicates appeared at most  _twice_ and return the new length.
# 
# Do not allocate extra space for another array; you must do this by **modifying
# the input array[in-place](https://en.wikipedia.org/wiki/In-place_algorithm)**
# with O(1) extra memory.
# 
# **Clarification:**
# 
# Confused why the returned value is an integer, but your answer is an array?
# 
# Note that the input array is passed in by **reference** , which means a
# modification to the input array will be known to the caller.
# 
# Internally you can think of this:
# 
#     
#     
#     // **nums** is passed in by reference. (i.e., without making a copy)
#     int len = removeDuplicates(nums);
#     
#     // any modification to **nums** in your function would be known by the caller.
#     // using the length returned by your function, it prints the first **len** elements.
#     for (int i = 0; i < len; i++) {
#         print(nums[i]);
#     }
#     
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,1,2,2,3]
#     Output: 5, nums = [1,1,2,2,3]
#     Explanation: Your function should return length = **5** , with the first five elements of _nums_ being **1, 1, 2, 2** and **3** respectively. It doesn't matter what you leave beyond the returned length.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,0,1,1,1,1,2,3,3]
#     Output: 7, nums = [0,0,1,1,2,3,3]
#     Explanation: Your function should return length = **7** , with the first seven elements of _nums_ being modified to  **0** , **0** , **1** , **1** , **2** , **3** and  **3** respectively. It doesn't matter what values are set beyond the returned length.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 3 * 104`
#   * `-104 <= nums[i] <= 104`
#   * `nums` is sorted in ascending order.
# 
# 
## @lc code=start
using LeetCode

function remove_duplicates2!(nums::Vector{Int})::Int
    j = 3
    for i in 3: length(nums)
        if nums[i] != nums[j - 2]
            nums[j] = nums[i]
            j += 1
        end
    end

    return j - 1
end
## @lc code=end
