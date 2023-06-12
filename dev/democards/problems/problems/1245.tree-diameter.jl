# @lc code=start
using LeetCode

function tree_diameter(edges::Vector{Vector{Int}})
    n = length(edges)
    neighbors = Dict(i => Int[] for i in 0:n)
    for edge in edges
        u, v = edge
        push!(neighbors[u], v)
        push!(neighbors[v], u)
    end

    function depth_first(node, neighbors)

        longest = (0, node)

        todo = [(longest..., -1)]
        while !isempty(todo)
            len, this, prev = pop!(todo)
            if len > longest[1]
                longest = (len, this)
            end

            for next in neighbors[this]
                next == prev && continue
                push!(todo, (len + 1, next, this))
            end
        end

        return longest
    end

    _, one_end = depth_first(0, neighbors)
    diameter, _ = depth_first(one_end, neighbors)

    return diameter
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

