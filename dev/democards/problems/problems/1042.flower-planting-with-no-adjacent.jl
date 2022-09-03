# @lc code=start
using LeetCode

function garden_no_adj(n::Int, path::Vector{Vector{Int}})
    G = Dict{Int,Set{Int}}()
    for (u, v) in path
        push!(get!(G, u, Set{Int}()), v)
        push!(get!(G, v, Set{Int}()), u)
    end
    res = zeros(Int, n)
    for i in 1:n
        res[i] = first(setdiff(1:4, [res[j] for j in G[i]]))
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

