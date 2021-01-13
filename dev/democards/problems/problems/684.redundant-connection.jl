# @lc code=start
using LeetCode

function UFS()

    function findRoot(u::Int, farther::Vector{Int})
        return (u == farther[u]) ? (u) : (farther[u] = findRoot(farther[u], farther))
    end

    function merge(u::Int, v::Int, farther::Vector{Int})
        u = findRoot(u, farther)
        v = findRoot(v, farther)
        (u == v) || (farther[u] = v)
        nothing
    end

    function issameRoot(u::Int, v::Int, farther::Vector{Int})
        return findRoot(u, farther) == findRoot(v, farther)
    end

    findRoot, merge, issameRoot
end

function findRedundantConnection(edges::Vector{Vector{Int}})::Vector{Int}
    farther = collect(1:1000)
    findRoot, merge, issameRoot = UFS()
    for edge in edges
        if issameRoot(edge..., farther)
            return edge
        end
        merge(edge..., farther)
    end
    []
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

