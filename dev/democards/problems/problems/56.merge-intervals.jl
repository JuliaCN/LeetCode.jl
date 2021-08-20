# @lc code=start
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

