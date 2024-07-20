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

permutation(nums::Vector{Int}) = permutation!(copy(nums))
function permutation!(nums::Vector{Int})
    sort!(nums)
    res = Vector{Vector{Int}}()
    n = length(nums)
    sizehint!(res, factorial(n))
    function dfs(nums::Vector{Int}, path::Vector{Int}, used::Vector{Bool}, len::Int)
        if len == n # alternatively, len = sum(used)
            push!(res, copy(path))
            return nothing
        end
        for i in 1:n
            used[i] && continue
            used[i] = true
            path[len + 1] = nums[i]
            dfs(nums, path, used, len + 1)
            used[i] = false
        end
    end
    dfs(nums, Vector{Int}(undef, n), fill(false, n), 0)
    return res
end
## @lc code=end
