# ---
# title: 56. Merge Intervals
# id: problem56
# author: Jimmy Shen
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Sort
# link: <https://leetcode.com/problems/merge-intervals/description/>
# hidden: true
# ---
# 
# Given an array of `intervals` where `intervals[i] = [starti, endi]`, merge all
# overlapping intervals, and return _an array of the non-overlapping intervals
# that cover all the intervals in the input_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
#     Output: [[1,6],[8,10],[15,18]]
#     Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: intervals = [[1,4],[4,5]]
#     Output: [[1,5]]
#     Explanation: Intervals [1,4] and [4,5] are considered overlapping.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= intervals.length <= 104`
#   * `intervals[i].length == 2`
#   * `0 <= starti <= endi <= 104`
# 
# 
## @lc code=start
using LeetCode

function merge_intervals(intervals::Vector{Vector{Int}})::Vector{Vector{Int}}
    result = Vector{Vector{Int}}([])
    for (a, b) in sort!(intervals, by = i -> i[1])
        if size(result, 1) > 0 && result[end][2] >= a
            result[end][2] = max(result[end][2], b)
        else
            push!(result, [a, b])
        end
    end
    return result
end
## @lc code=end
