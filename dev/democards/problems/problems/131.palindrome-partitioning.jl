# @lc code=start
using LeetCode

function partition_ps(s::String)
    len = length(s)
    is_ps = fill(true, len, len)
    for i in len:-1:1, j in (i + 1):len
        is_ps[i, j] = (s[i] == s[j]) && is_ps[i + 1, j - 1]
    end
    function dfs(start::Int)
        start == len && return [[SubString(s, len, len)]]
        res = Vector{String}[]
        for ed in start:len
            !is_ps[start, ed] && continue
            for it in dfs(ed + 1)
                push!(res, pushfirst!(it, SubString(s, start, ed)))
            end
        end
        return res
    end
    return dfs(1)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

