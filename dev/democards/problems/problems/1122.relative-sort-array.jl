# @lc code=start
using LeetCode

function relative_sort_array(arr1::Vector{Int}, arr2::Vector{Int})
    res = Vector{Int}(undef, length(arr1))
    idx = length(res)
    dc = Dict{Int,Int}((k => 0) for k in arr2)
    for i in arr1
        if haskey(dc, i)
            dc[i] += 1
        else
            res[idx] = i
            idx -= 1
        end
    end
    sort!(@view(res[(idx + 1):end]))
    idx = 1
    for item in arr2
        res[idx:(idx + dc[item] - 1)] .= item
        idx += dc[item]
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

