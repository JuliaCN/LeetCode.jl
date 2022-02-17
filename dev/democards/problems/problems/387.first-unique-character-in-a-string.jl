# @lc code=start
using LeetCode

function first_unique_char(s::String)::Int
    table = Dict{Char,Bool}()
    for i in s
        table[i] = !haskey(table, i)
    end
    for (i, st) in enumerate(s)
        table[st] && return i
    end
    return -1
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

