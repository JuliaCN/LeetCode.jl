# ---
# title: 46. Permutations
# id: problem46
# author: Pixia1234
# date: 2024-07-19
# difficulty: Medium
# categories: Backtracking
# link: <https://leetcode.com/problems/permutations/description/>
# hidden: true
# ---
# 
# Given an array `nums` of distinct integers, return _all the possible
# permutations_. You can return the answer in **any order**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3]
#     Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,1]
#     Output: [[0,1],[1,0]]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1]
#     Output: [[1]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 6`
#   * `-10 <= nums[i] <= 10`
#   * All the integers of `nums` are **unique**.
# 
# 
## @lc code=start
using LeetCode

function permutation(nums::Vector{Int})::Vector{Vector{Int}}
    res = Vector{Vector{Int}}()
    n = length(nums)
    sizehint!(res, factorial(n))
    function dfs(nums::Vector{Int}, path::Vector{Int}, used::Vector{Bool})
        if length(path) == n
            push!(res, copy(path))
            return nothing
        end
        for i in 1:n
            if !used[i]
                if i > 1 && nums[i] == nums[i - 1] && !used[i - 1]
                    continue
                end
                used[i] = true
                push!(path, nums[i])
                dfs(nums, path, used)
                pop!(path)
                used[i] = false
            end
        end
    end
    sort!(nums)
    dfs(nums, Int[], fill(false, n))
    return res
end
## @lc code=end
