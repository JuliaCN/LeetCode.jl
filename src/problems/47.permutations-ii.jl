# ---
# title: 47. Permutations II
# id: problem47
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Backtracking
# link: <https://leetcode.com/problems/permutations-ii/description/>
# hidden: true
# ---
# 
# Given a collection of numbers, `nums`, that might contain duplicates, return
# _all possible unique permutations **in any order**._
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,2]
#     Output:
#     [[1,1,2],
#      [1,2,1],
#      [2,1,1]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,2,3]
#     Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 8`
#   * `-10 <= nums[i] <= 10`
# 
# 
## @lc code=start
using LeetCode

function permutationII(nums::Vector{Int})::Vector{Vector{Int}}
    res = Vector{Vector{Int}}()
    n = length(nums)
    function dfs(nums::Vector{Int}, path::Vector{Int}, used::Vector{Bool})
        if length(path) == n
            push!(res, copy(path))
            return nothing
        end
        @inbounds for i in 1:n
            if used[i] || (i > 1 && nums[i] == nums[i - 1] && !used[i - 1])
                continue
            end
            push!(path, nums[i])
            used[i] = true
            dfs(nums, path, used)
            pop!(path)
            used[i] = false
        end
    end
    sort!(nums)
    dfs(nums, Vector{Int}(), fill(false, n))
    return res
end
## @lc code=end
