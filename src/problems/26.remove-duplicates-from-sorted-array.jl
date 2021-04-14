# ---
# title: 26. Remove Duplicates from Sorted Array
# id: problem26
# author: Qling
# date: 2020-10-31
# difficulty: Easy
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/>
# hidden: true
# ---
# 
# Given a sorted array _nums_ , remove the duplicates [**in-
# place**](https://en.wikipedia.org/wiki/In-place_algorithm) such that each
# element appears only _once_ and returns the new length.
# 
# Do not allocate extra space for another array, you must do this by **modifying
# the input array[in-place](https://en.wikipedia.org/wiki/In-place_algorithm)**
# with O(1) extra memory.
# 
# **Clarification:**
# 
# Confused why the returned value is an integer but your answer is an array?
# 
# Note that the input array is passed in by **reference** , which means a
# modification to the input array will be known to the caller as well.
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
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,2]
#     Output: 2, nums = [1,2]
#     Explanation:  Your function should return length = **2** , with the first two elements of _nums_ being **1** and **2** respectively. It doesn't matter what you leave beyond the returned length.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,0,1,1,1,2,2,3,3,4]
#     Output: 5, nums = [0,1,2,3,4]
#     Explanation:  Your function should return length = **5** , with the first five elements of _nums_ being modified to  **0** , **1** , **2** , **3** , and  **4** respectively. It doesn't matter what values are set beyond the returned length.
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

function remove_duplicates1!(nums::Vector{Int})::Int
    j = 2
    for i in 2: length(nums)
        if nums[i] != nums[j - 1]
            nums[j] = nums[i]
            j += 1
        end
    end

    return j - 1
end

## @lc code=end
