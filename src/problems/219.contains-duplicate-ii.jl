# ---
# title: 219. Contains Duplicate II
# id: problem219
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/contains-duplicate-ii/description/>
# hidden: true
# ---
# 
# Given an array of integers and an integer _k_ , find out whether there are two
# distinct indices _i_ and _j_ in the array such that **nums[i] = nums[j]** and
# the **absolute** difference between _i_ and _j_ is at most _k_.
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3,1], k = 3
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,0,1,1], k = 1
#     Output: true
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1,2,3,1,2,3], k = 2
#     Output: false
#     
# 
# 
## @lc code=start
using LeetCode

function contains_nearby_duplicate(nums::Vector{Int}, k::Int)::Bool
    pos = Dict{Int,Int}()
    for (i, num) in enumerate(nums)
        haskey(pos, num) && i - pos[num] <= k && return true
        pos[num] = i
    end
    return false
end

## @lc code=end
