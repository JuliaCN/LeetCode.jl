# ---
# title: 1658. Minimum Operations to Reduce X to Zero
# id: problem1658
# author: AquaIndigo
# date: 2020-11-23
# difficulty: Medium
# categories: Two Pointers, Binary Search, Greedy
# link: <https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/description/>
# hidden: true
# ---
# 
# You are given an integer array `nums` and an integer `x`. In one operation,
# you can either remove the leftmost or the rightmost element from the array
# `nums` and subtract its value from `x`. Note that this **modifies** the array
# for future operations.
# 
# Return _the **minimum number** of operations to reduce _`x` _to **exactly**_
# `0` _if it 's possible_ _, otherwise, return_`-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,4,2,3], x = 5
#     Output: 2
#     Explanation: The optimal solution is to remove the last two elements to reduce x to zero.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [5,6,7,8,9], x = 4
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [3,2,20,1,1,3], x = 10
#     Output: 5
#     Explanation: The optimal solution is to remove the last three elements and the first two elements (5 operations in total) to reduce x to zero.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 105`
#   * `1 <= nums[i] <= 104`
#   * `1 <= x <= 109`
# 
# 
## @lc code=start
using LeetCode

function min_operations(nums::Vector{Int}, x::Int)
    target = sum(nums) - x
    target < 0 && return -1
    println(target)
    left, right, maxn = 0, 0, -1
    len = length(nums)
    while right < len
        target -= nums[right += 1]
        while target < 0
            target += nums[left += 1]
        end
        (target == 0) && (maxn = max(maxn, right - left))
    end
    maxn == -1 ? maxn : len - maxn
end
## @lc code=end
