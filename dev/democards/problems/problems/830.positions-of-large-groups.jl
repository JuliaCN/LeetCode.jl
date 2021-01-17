# @lc code=start
using LeetCode

function large_group_positions(s::String)::Vector{Vector{Int}}
    ch = s[1]
    bg = 1
    res = Vector{Int}[]
    for i in 2:length(s)
        if s[i] != ch
            if i - bg > 2
                push!(res, [bg - 1, i - 2]) #1-index to 0-index
            end
            ch = s[i]
            bg = i
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

