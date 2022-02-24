# ---
# title: 78. Subsets
# id: problem78
# author: Jerry Ling
# date: 2021-12-01
# difficulty: Medium
# categories: Array, Backtracking, Bit Manipulation
# link: <https://leetcode.com/problems/subsets/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, return _all possible subsets (the power set)_.
# 
# The solution set must not contain duplicate subsets.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3]
#     Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0]
#     Output: [[],[0]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 10`
#   * `-10 <= nums[i] <= 10`
# 
# 
## @lc code=start
using LeetCode

function subsets(arr::Vector{T}) where T
    res = [T[]]
    for e in arr
        for i in eachindex(res)
            push!(res, vcat(res[i], e))
        end
    end
    res
end

## add your code here:
## @lc code=end
