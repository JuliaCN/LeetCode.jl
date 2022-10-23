# @lc code=start
using LeetCode

using DataStructures
function possible_bipartition(n::Int, dislikes::Vector{Vector{Int}})
    int_ds = IntDisjointSets(n)
    graph = [Int[] for _ in 1:n]
    for (a, b) in dislikes
        push!(graph[a], b)
        push!(graph[b], a)
    end
    for i in 1:n
        for j in graph[i]
            union!(int_ds, graph[i][1], j)
            DataStructures.in_same_set(int_ds, i, j) && return false
        end
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

