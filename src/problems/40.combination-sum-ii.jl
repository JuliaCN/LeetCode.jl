# ---
# title: 40. Combination Sum II
# id: problem40
# author: Pixia1234
# date: 2024-07-18
# difficulty: Medium
# categories: Array, Backtracking
# link: <https://leetcode.com/problems/combination-sum-ii/description/>
# hidden: true
# ---
# 
# Given a collection of candidate numbers (`candidates`) and a target number
# (`target`), find all unique combinations in `candidates` where the candidate
# numbers sum to `target`.
# 
# Each number in `candidates` may only be used **once** in the combination.
# 
# **Note:**  The solution set must not contain duplicate combinations.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: candidates = [10,1,2,7,6,1,5], target = 8
#     Output: 
#     [
#     [1,1,6],
#     [1,2,5],
#     [1,7],
#     [2,6]
#     ]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: candidates = [2,5,2,1,2], target = 5
#     Output: 
#     [
#     [1,2,2],
#     [5]
#     ]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= candidates.length <= 100`
#   * `1 <= candidates[i] <= 50`
#   * `1 <= target <= 30`
# 
# 
## @lc code=start
using LeetCode

function dfs(
    candidates::Vector{Int},
    target::Int,
    path::Vector{Int},
    start::Int,
    res::Vector{Vector{Int}},
)
    if target == 0
        push!(res, copy(path))
        return nothing
    end
    for i in start:length(candidates)
        if i > start && candidates[i] == candidates[i - 1]
            continue
        end
        if target - candidates[i] < 0
            break
        end
        push!(path, candidates[i])
        dfs(candidates, target - candidates[i], path, i + 1, res)
        pop!(path)
    end
end ## We use dfs here and for sure there exists more ways to solve the problem.

function combinationSum(candidates::Vector{Int}, target::Int)
    res = Vector{Vector{Int}}()
    sort!(candidates)
    path = Int[]
    dfs(candidates, target, path, 1, res)
    return res
end

## @lc code=end
