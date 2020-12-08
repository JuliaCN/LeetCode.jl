# ---
# title: 90. Subsets II
# id: problem90
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Backtracking
# link: <https://leetcode.com/problems/subsets-ii/description/>
# hidden: true
# ---
# 
# Given a collection of integers that might contain duplicates, **_nums_** ,
# return all possible subsets (the power set).
# 
# **Note:** The solution set must not contain duplicate subsets.
# 
# **Example:**
# 
#     
#     
#     Input: [1,2,2]
#     Output:
#     [
#       [2],
#       [1],
#       [1,2,2],
#       [2,2],
#       [1,2],
#       []
#     ]
#     
# 
# 
## @lc code=start
using LeetCode

function subsets_with_dup(nums::Vector{Int})::Vector{Vector{Int}}
    sort!(nums)
    res = Vector{Int}[Int[]]

    n = 0
    for (i, x) in enumerate(nums)
        if i == 1
            n = 1
        elseif nums[i] != nums[i - 1]
            n = length(res)
            ## n is used to record how many sets to skip in case nums[i+1] == nums[i]
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
## @lc code=end
