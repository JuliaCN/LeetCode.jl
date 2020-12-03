"""
@lc app=leetcode id=90 lang=python3

[90] Subsets II

https://leetcode.com/problems/subsets-ii/description/

algorithms
Medium (44.83%)
Likes:    1788
Dislikes: 79
Total Accepted:    290.9K
Total Submissions: 614.9K
Testcase Example:  '[1,2,2]'

Given a collection of integers that might contain duplicates, nums, return
all possible subsets (the power set).

Note: The solution set must not contain duplicate subsets.

Example:


Input: [1,2,2]
Output:
[
⁠ [2],
⁠ [1],
⁠ [1,2,2],
⁠ [2,2],
⁠ [1,2],
⁠ []
]




@lc code=start
"""
function subsets_with_dup(nums::Vector{Int})::Vector{Vector{Int}}
    sort!(nums)
    res = Vector{Int}[Int[]]

    n = 0
    for (i, x) in enumerate(nums)
        if i == 1
            n = 1
        elseif nums[i] != nums[i - 1]
            n = length(res)

        end

        if n == length(res)
            for j in 1:n
                push!(res, [res[j]..., nums[i]])
            end
        else
            for j in (length(res) - n + 1):length(res)
                push!(res, [res[j]..., nums[i]])
            end
        end
    end
    return res
end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

