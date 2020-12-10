# @lc code=start
using LeetCode

function findContentChildren(g::Vector{Int}, s::Vector{Int})::Int
    sort!(g)
    sort!(s)

    child, cookie = 1, 1

    while child <= length(g) && cookie <= length(s)
        if g[child] <= s[cookie]
            child += 1
        end
        cookie += 1
    end

    return child - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

