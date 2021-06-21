# @lc code=start
using LeetCode

function find_right_interval(intervals::Vector{Tuple{Int,Int}})
    perm = sortperm(intervals; by = x -> x[1])
    maxb = intervals[perm[end]][1]
    res = fill(0, length(intervals))
    for (idx, intv) in intervals |> enumerate
        res[idx] = intv[2] > maxb ? -1 : searchsortedfirst(perm, intv[2]; by = i -> intervals[i][1])
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

