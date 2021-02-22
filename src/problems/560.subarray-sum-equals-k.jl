# ---
# title: 560. Subarray Sum Equals K
# id: problem560
# author: Indigo
# date: 2021-02-16
# difficulty: Medium
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/subarray-sum-equals-k/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums` and an integer `k`, return _the total number
# of continuous subarrays whose sum equals to`k`_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,1], k = 2
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,2,3], k = 3
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 2 * 104`
#   * `-1000 <= nums[i] <= 1000`
#   * `-107 <= k <= 107`
# 
# 
## @lc code=start
using LeetCode

function subarray_sum(nums::Vector{Int}, k::Int)
    mp = DefaultDict(0, 0 => 1)
    res, pre_sum = 0, 0
    for num in nums
        pre_sum += num
        res += mp[pre_sum - k]
        mp[pre_sum] += 1
    end
    res
end
## @lc code=end
