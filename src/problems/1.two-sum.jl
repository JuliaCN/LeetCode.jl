# ---
# title: 1. Two Sum
# id: problem1
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/two-sum/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums` and an integer `target`, return _indices of
# the two numbers so that they add up to `target`_.
# 
# You may assume that each input would have **_exactly_ one solution**, and you
# may not use the _same_ element twice.
# 
# You can return the answer in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,7,11,15], target = 9
#     Output: [1, 2]
#     Output: Because nums[1] + nums[2] == 9, we return [1, 2].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [3,2,4], target = 6
#     Output: [2, 3]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [3,3], target = 6
#     Output: [1, 2]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= length(nums) <= 103`
#   * `-109 <= nums[i] <= 109`
#   * `-109 <= target <= 109`
#   * **Only one valid answer exists.**
# 
# 
## @lc code=start
using LeetCode

function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()
    for (i, n) in enumerate(nums)
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end
## @lc code=end
