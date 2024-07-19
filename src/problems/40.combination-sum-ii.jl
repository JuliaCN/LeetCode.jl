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

function combinationSum(candidates::AbstractVector{Int}, target::Int)
    res = Vector{Vector{Int}}()
    return combinationSum!(sort(candidates), target, Int[], res)
end

function combinationSum!(
    candidates::AbstractVector{Int},
    target::Int,
    path::AbstractVector{Int},
    res::Vector{Vector{Int}},
)
    # if the target is 0, we find a solution
    target == 0 && return push!(res, copy(path))
    length(candidates) == 0 || target < first(candidates) && return res

    # use @view to avoid copying the array
    for (i, candidate) in enumerate(candidates)
        i > 1 && candidate == candidates[i - 1] && continue
        candidate > target && break
        subcandidates = @view(candidates[1:length(candidate) .!= i]) # skip the current candidate
        combinationSum!(subcandidates, target - candidate, push!(path, candidate), res)
    end
    return res
end

## @lc code=end
