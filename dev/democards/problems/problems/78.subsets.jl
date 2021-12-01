# @lc code=start
using LeetCode

function subsets(arr::Vector{T}) where T
    res = [T[]]
    for e in arr
        for i in eachindex(res)
            push!(res, vcat(res[i], e))
        end
    end
    res
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

